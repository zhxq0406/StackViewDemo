//
//  ViewController.swift
//  stackViewDemo2
//
//  Created by zxq on 16/7/22.
//  Copyright © 2016年 zxq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomStackView: UIStackView!
    @IBAction func remove(sender: AnyObject) {
        let star:UIView? = self.bottomStackView.arrangedSubviews.last
        //        if let aStar = star
        //        {
        self.bottomStackView.removeArrangedSubview(star!)
        star!.removeFromSuperview()
        UIView.animateWithDuration(0.25, animations: {
            self.bottomStackView.layoutIfNeeded()
        })
        //        }
        
    }
  
    @IBAction func add(sender: AnyObject) {
        
        let starImgVw:UIImageView = UIImageView(image: UIImage(named: "star"))
        starImgVw.contentMode = .ScaleAspectFit
        self.bottomStackView.addArrangedSubview(starImgVw)
        UIView.animateWithDuration(0.25, animations: {
            self.bottomStackView.layoutIfNeeded()
        })
        

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

