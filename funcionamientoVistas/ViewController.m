//
//  ViewController.m
//  funcionamientoVistas
//
//  Created by cice on 22/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Tamaño vista raiz: %f %f", self.view.frame.size.width,self.view.frame.size.height);

    UIView *vistaRoja = [[UIView alloc]
                         initWithFrame:CGRectMake(0,0,self.view.frame.size.width, self.view.frame.size.height/2)];
    
    vistaRoja.backgroundColor = [UIColor redColor];
    [self.view addSubview:vistaRoja];
    
    UIView *vistaAmarilla = [[UIView alloc]
                         initWithFrame:CGRectMake(0,self.view.frame.size.height/2,self.view.frame.size.width, self.view.frame.size.height/2)];
    
    vistaAmarilla.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:vistaAmarilla];
    
    UIView *vistaVerde = [[UIView alloc]
                             initWithFrame:CGRectMake(0,0, 100,100)];
    
    vistaVerde.center = CGPointMake(vistaAmarilla.frame.size.width/2, vistaAmarilla.frame.size.height/2);
    
    vistaVerde.backgroundColor = [UIColor greenColor];
    [vistaAmarilla addSubview:vistaVerde];
    
//    [UIView animateWithDuration:5 animations:^{
//        vistaVerde.backgroundColor = [UIColor blueColor];
//        vistaVerde.bounds = CGRectMake(0, 0, vistaAmarilla.frame.size.width, vistaAmarilla.frame.size.height);
//        vistaRoja.alpha = 0;
//    }];
    
    vistaVerde.layer.cornerRadius = 10;
    vistaVerde.layer.borderWidth = 2;
    vistaVerde.layer.borderColor = [[UIColor blackColor] CGColor];
    //vistaVerde.clipsToBounds = true;
    
    
    // Completion: ejecución de código después de la animación.
    [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionRepeat|UIViewAnimationOptionAutoreverse animations:^{
        vistaVerde.backgroundColor = [UIColor blueColor];
        vistaVerde.bounds = CGRectMake(0, 0, vistaAmarilla.frame.size.width, vistaAmarilla.frame.size.height);
        vistaRoja.alpha = 0;
    } completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
