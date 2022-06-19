package scala.concurrent;

import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$traverse$1.class */
public final class Future$$anonfun$traverse$1 extends AbstractFunction2<Future<Builder<B, M>>, A, Future<Builder<B, M>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final ExecutionContext executor$4;
    private final Function1 fn$1;

    public Future$$anonfun$traverse$1(Function1 function1, ExecutionContext executionContext) {
        this.fn$1 = function1;
        this.executor$4 = executionContext;
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((Future) obj, (Future) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Future<Builder<B, M>> apply(Future<Builder<B, M>> future, A a) {
        return future.flatMap(new Future$$anonfun$traverse$1$$anonfun$apply$12(this, (Future) this.fn$1.apply(a)), this.executor$4);
    }
}
