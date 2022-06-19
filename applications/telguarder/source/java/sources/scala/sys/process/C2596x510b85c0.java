package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* renamed from: scala.sys.process.ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$3 */
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$3.class */
public final class C2596x510b85c0 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final Process second$1;

    public C2596x510b85c0(ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5 processImpl$SequentialProcess$$anonfun$runAndExitValue$5, Process process) {
        this.second$1 = process;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.second$1.destroy();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.second$1.destroy();
    }
}
