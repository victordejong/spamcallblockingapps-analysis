package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4.class */
public final class ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final Process first$2;
    public final Process second$2;

    public ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4(ProcessImpl.PipedProcesses pipedProcesses, Process process, Process process2) {
        this.second$2 = process;
        this.first$2 = process2;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.first$2.destroy();
        this.second$2.destroy();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.first$2.destroy();
        this.second$2.destroy();
    }
}
