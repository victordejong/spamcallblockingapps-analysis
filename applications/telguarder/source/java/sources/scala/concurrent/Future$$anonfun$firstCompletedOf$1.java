package scala.concurrent;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$firstCompletedOf$1.class */
public final class Future$$anonfun$firstCompletedOf$1 extends AbstractFunction1<Future<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 completeFirst$1;
    private final ExecutionContext executor$2;

    public Future$$anonfun$firstCompletedOf$1(ExecutionContext executionContext, Function1 function1) {
        this.executor$2 = executionContext;
        this.completeFirst$1 = function1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Future) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Future<T> future) {
        future.onComplete(this.completeFirst$1, this.executor$2);
    }
}
