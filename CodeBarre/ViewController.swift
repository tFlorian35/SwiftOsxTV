//
//  ViewController.swift
//  CodeBarre
//
//  Created by Stagiaire on 17/03/2017.
//  Copyright © 2017 Stagiaire. All rights reserved.
//

import Cocoa

//MARK : Var

// MARK : Extensions

//https://www.xcoding.it/tutorial-table-view-osx-swift/


class ViewController: NSViewController, NSTableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    //MARK : Outlet
    @IBOutlet weak var MyTableView: NSTableView!
    
    var test = [
        "Pain" : 0.95,
        "Bananes" : 2.20,
    ]
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return test.count
        
    }
    
    func tableView(tableView: NSTableView!, viewForTableColumn: NSTableColumn, row: Int) -> NSView
    {
        // 1
        var cell = tableView.make(withIdentifier: "NomCellule", owner: self) as! NSTableCellView
        
        // 2
        if (viewForTableColumn.identifier == "NomColone") {
            var cell = tableView.make(withIdentifier: "NomCellule", owner: self) as! NSTableCellView
            // 3
            let nomeDipendente = test.keys.array[row]
            cell.textField!.stringValue = nomeDipendente
            // 4
            return cell;
        }
        
        if (viewForTableColumn.identifier == "PrixColonne") {
            var cell = tableView.make(withIdentifier: "PrixCellule", owner: self) as! NSTableCellView
            let nomeDipendente = test.keys.array[row]
            var salarioDipendente = test[nomeDipendente]
            cell.textField!.stringValue = String(format:"%.2f",salarioDipendente!)
            return cell;
        }
        
        
        return cell
    }
    
   
}


