package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$2.class */
public final class ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$2 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final Process first$1;

    public ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$2(ProcessImpl.SequentialProcess sequentialProcess, Process process) {
        this.first$1 = process;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.first$1.destroy();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.first$1.destroy();
    }
}
