//
//  ViewController.swift
//  RGB
//
//  Created by Vyacheslav on 23.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var blueColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var rgbColorView: UIView!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var redSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbColorView.layer.cornerRadius = 10
        
        redColorValue.text = redSlider.value.formatted()
        greenColorValue.text = greenSlider.value.formatted()
        blueColorValue.text = blueSlider.value.formatted()
        
        rgbColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1.0))
        
    }

    @IBAction func blueColorSliderAction() {
        blueColorValue.text = (round(blueSlider.value * 100) / 100).formatted()
        rgbColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1.0))

    }
    
    @IBAction func redColorSliderAction() {
        redColorValue.text = (round(redSlider.value * 100) / 100).formatted()
        rgbColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1.0))

    }
    
    @IBAction func greenColorSliderAction() {
        greenColorValue.text = (round(greenSlider.value * 100) / 100).formatted()
        rgbColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1.0))

    }
}

