//
//  ViewController.m
//  DemoKeyboardHandle
//
//  Created by admin on 1/30/15.
//  Copyright (c) 2015 EricNguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.textView.isEditable) {
        self.statusLabel.text = @"isEditable = TRUE";
    }else {
        self.statusLabel.text = @"isEditable = FALSE";
    }
}
- (IBAction)toggleBtnTap:(id)sender {
    [self.textView setEditable:!self.textView.isEditable];
    if (self.textView.isEditable) {
        self.statusLabel.text = @"isEditable = TRUE";
    }else {
        self.statusLabel.text = @"isEditable = FALSE";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
