
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonPressed(_ sender: Any) {
       let myAlert = UIAlertController(title: "알림", message:"설정된 시간이 되었습니다!!", preferredStyle: .alert)
    
        //세번째 인자를 클로져 사용
        // 후행 클로져(Trailing Closure) 일때 핸들러 지우고 그앞에 ()
        let okAction = UIAlertAction(title: "종료", style: .default) { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
    
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
            
        })
        
        let testAction = UIAlertAction(title: "테스트", style: .default, handler: { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
            
        })
        
    myAlert.addAction(okAction)
    myAlert.addAction(cancelAction)
    myAlert.addAction(testAction)
        
    present(myAlert, animated: true, completion: nil)
    }
    
}

