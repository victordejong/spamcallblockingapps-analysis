package scala.concurrent;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$find$1.class */
public final class Future$$anonfun$find$1 extends AbstractFunction1<Future<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ExecutionContext executor$3;
    private final Function1 search$1;

    public Future$$anonfun$find$1(ExecutionContext executionContext, Function1 function1) {
        this.executor$3 = executionContext;
        this.search$1 = function1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Future) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Future<T> future) {
        future.onComplete(this.search$1, this.executor$3);
    }
}
