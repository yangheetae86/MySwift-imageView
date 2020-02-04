//
//  ViewController.swift
//  imageView
//
//  Created by Y on 2020/02/05.
//  Copyright © 2020 HEETAE YANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "스크린샷 2019-07-03 오전 2.22.21")
        imgOff = UIImage(named: "스크린샷 2019-07-03 오전 2.23.10")
        
        imgView.image = imgOn
        
    }


    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom) { // true
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            
            btnResize.setTitle("확대", for: .normal)
        }
        else { // false
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
}

