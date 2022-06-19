package scala.concurrent;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$map$1.class */
public final class Future$$anonfun$map$1 extends AbstractFunction1<Try<T>, Promise<S>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$3;
    private final Promise p$3;

    public Future$$anonfun$map$1(Future future, Promise promise, Function1 function1) {
        this.p$3 = promise;
        this.f$3 = function1;
    }

    public final Promise<S> apply(Try<T> r5) {
        return this.p$3.complete(r5.map(this.f$3));
    }
}
