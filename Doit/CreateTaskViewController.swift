//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by Salih Alborno on 29/05/2017.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
       
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func addTapped(_ sender: Any) {
        //create a task from the outlet information
        let task = Task()
        task.Name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //add new task to array in previous viewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
