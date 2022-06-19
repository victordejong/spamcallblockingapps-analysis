package scala.sys.process;

import java.util.concurrent.LinkedBlockingQueue;
import scala.Serializable;
import scala.package$;
import scala.runtime.AbstractFunction1$mcVI$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$Streamed$$anonfun$apply$1.class */
public final class BasicIO$Streamed$$anonfun$apply$1 extends AbstractFunction1$mcVI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final LinkedBlockingQueue q$1;

    public BasicIO$Streamed$$anonfun$apply$1(LinkedBlockingQueue linkedBlockingQueue) {
        this.q$1 = linkedBlockingQueue;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToInt(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVI$sp
    public final void apply(int i) {
        apply$mcVI$sp(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public void apply$mcVI$sp(int i) {
        this.q$1.put(package$.MODULE$.Left().apply(BoxesRunTime.boxToInteger(i)));
    }
}
