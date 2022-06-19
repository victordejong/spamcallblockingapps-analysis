package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcI$sp;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$1.class */
public final class ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$1 extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final Process first$1;

    public ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$1(ProcessImpl.SequentialProcess sequentialProcess, Process process) {
        this.first$1 = process;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return this.first$1.exitValue();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        return this.first$1.exitValue();
    }
}
