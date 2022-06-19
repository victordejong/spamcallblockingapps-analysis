package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcI$sp;
/* renamed from: scala.sys.process.ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2 */
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2.class */
public final class C2595x510b85bf extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final Process second$1;

    public C2595x510b85bf(ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5 processImpl$SequentialProcess$$anonfun$runAndExitValue$5, Process process) {
        this.second$1 = process;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return this.second$1.exitValue();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        return this.second$1.exitValue();
    }
}
