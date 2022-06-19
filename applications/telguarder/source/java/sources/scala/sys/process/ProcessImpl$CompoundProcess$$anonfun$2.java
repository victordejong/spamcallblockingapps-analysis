package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$CompoundProcess$$anonfun$2.class */
public final class ProcessImpl$CompoundProcess$$anonfun$2 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final Thread thread$1;

    public ProcessImpl$CompoundProcess$$anonfun$2(ProcessImpl.CompoundProcess compoundProcess, Thread thread) {
        this.thread$1 = thread;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.thread$1.interrupt();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.thread$1.interrupt();
    }
}
