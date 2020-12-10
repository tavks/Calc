import UIKit

class ViewController: UIViewController {
    
    var userIsTyping: Bool = false
    var firstOperand: String?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func swipeHandlerRight(_ gestureRecognizer: UISwipeGestureRecognizer) {
        
        if gestureRecognizer.state == .ended {
            resultLabel.text = "Success Right"
        }
    }
    
    @IBAction func swipeHandlerLeft(_ gestureRecognizer: UISwipeGestureRecognizer) {
        
        if gestureRecognizer.state == .ended {
            resultLabel.text = "Success Left"
        }
    }
    
    
    
    
    
    
    
    
    
    @IBAction func numberButtonTouched(_ sender: UIButton) {
        if userIsTyping {
            resultLabel.text! += sender.titleLabel!.text!
        }
        else {
            resultLabel.text! = ""
            resultLabel.text! += sender.titleLabel!.text!
        }
        userIsTyping = true
        //firstOperand += sender.titleLabel!.text
        
    }
    
    @IBAction func functionalButtonTouched(_ sender: UIButton) {
        userIsTyping = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

