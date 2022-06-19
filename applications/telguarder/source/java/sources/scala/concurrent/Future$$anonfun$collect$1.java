package scala.concurrent;

import scala.PartialFunction;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$collect$1.class */
public final class Future$$anonfun$collect$1 extends AbstractFunction1<T, S> implements Serializable {
    public static final long serialVersionUID = 0;
    private final PartialFunction pf$3;

    /* JADX WARN: Multi-variable type inference failed */
    public Future$$anonfun$collect$1(Future future, Future<T> future2) {
        this.pf$3 = future2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [S, java.lang.Object] */
    @Override // scala.Function1
    public final S apply(T t) {
        return this.pf$3.applyOrElse(t, new Future$$anonfun$collect$1$$anonfun$apply$4(this));
    }
}
