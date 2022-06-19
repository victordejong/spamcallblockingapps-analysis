package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction1$mcZI$sp;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$ProcessSequence$$anonfun$$lessinit$greater$3.class */
public final class ProcessImpl$ProcessSequence$$anonfun$$lessinit$greater$3 extends AbstractFunction1$mcZI$sp implements Serializable {
    public static final long serialVersionUID = 0;

    public ProcessImpl$ProcessSequence$$anonfun$$lessinit$greater$3(Process$ process$) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.Function1$mcZI$sp
    public final boolean apply(int i) {
        return true;
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public boolean apply$mcZI$sp(int i) {
        return true;
    }
}
