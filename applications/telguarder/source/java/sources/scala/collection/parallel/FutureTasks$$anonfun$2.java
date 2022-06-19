package scala.collection.parallel;

import scala.Serializable;
import scala.concurrent.Await$;
import scala.concurrent.Future;
import scala.concurrent.duration.Duration$;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks$$anonfun$2.class */
public final class FutureTasks$$anonfun$2 extends AbstractFunction0<R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Future future$1;

    public FutureTasks$$anonfun$2(FutureTasks futureTasks, Future future) {
        this.future$1 = future;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
    @Override // scala.Function0
    public final R apply() {
        return Await$.MODULE$.result(this.future$1, Duration$.MODULE$.Inf());
    }
}
