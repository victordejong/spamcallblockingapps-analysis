package scala.sys.process;

import java.util.concurrent.LinkedBlockingQueue;
import scala.Serializable;
import scala.package$;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$Streamed$$anonfun$apply$2.class */
public final class BasicIO$Streamed$$anonfun$apply$2 extends AbstractFunction1<T, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final LinkedBlockingQueue q$1;

    public BasicIO$Streamed$$anonfun$apply$2(LinkedBlockingQueue linkedBlockingQueue) {
        this.q$1 = linkedBlockingQueue;
    }

    @Override // scala.Function1
    public final void apply(T t) {
        this.q$1.put(package$.MODULE$.Right().apply(t));
    }
}
