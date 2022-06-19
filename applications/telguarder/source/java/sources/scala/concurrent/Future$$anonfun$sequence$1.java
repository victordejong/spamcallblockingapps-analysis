package scala.concurrent;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$sequence$1.class */
public final class Future$$anonfun$sequence$1 extends AbstractFunction2<Future<Builder<A, M>>, Future<A>, Future<Builder<A, M>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final ExecutionContext executor$1;

    public Future$$anonfun$sequence$1(ExecutionContext executionContext) {
        this.executor$1 = executionContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Future<Builder<A, M>> apply(Future<Builder<A, M>> future, Future<A> future2) {
        return future.flatMap(new Future$$anonfun$sequence$1$$anonfun$apply$10(this, future2), this.executor$1);
    }
}
