package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcI$sp;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessCreation$$anonfun$apply$1.class */
public final class ProcessCreation$$anonfun$apply$1 extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final boolean value$1;

    public ProcessCreation$$anonfun$apply$1(ProcessCreation processCreation, boolean z) {
        this.value$1 = z;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return apply$mcI$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        return !this.value$1 ? 1 : 0;
    }
}
