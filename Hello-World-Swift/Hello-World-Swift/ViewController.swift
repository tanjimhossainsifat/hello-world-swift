//
//  ViewController.swift
//  Hello-World-Swift
//
//  Created by Tanjim Hossain on 12/5/17.
//  Copyright © 2017 Tanjim Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    //MARK: Outlets
    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    //MARK: UIViewController Overriden methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let name = textField.text {
            self.outputLabel.text = "Welcome " + name
        }
    }


}

