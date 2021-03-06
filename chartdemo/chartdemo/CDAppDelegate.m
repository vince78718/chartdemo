//
//  CDAppDelegate.m
//  chartdemo
//
//  Created by Vincent on 2013/07/22.
//  Copyright (c) 2013年 Vincent. All rights reserved.
//

#import "CDAppDelegate.h"
#import "CDRootViewController.h"

@implementation CDAppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    // Load and assign the root view controller
    CDRootViewController *rootViewController = [[CDRootViewController alloc] init];
    self.window.rootViewController = rootViewController;
    
    [self.window makeKeyAndVisible];
    
    // Make some to load faster.
    dispatch_async(dispatch_get_main_queue(), ^{
		
        // Setup status bar network indicator
		[AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
        
	});

    
    return YES;
}

@end
