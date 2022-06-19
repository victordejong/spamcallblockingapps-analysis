package scala.concurrent;

import scala.PartialFunction;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$recover$1.class */
public final class Future$$anonfun$recover$1 extends AbstractFunction1<Try<T>, Promise<U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Promise p$5;
    private final PartialFunction pf$4;

    public Future$$anonfun$recover$1(Future future, Promise promise, PartialFunction partialFunction) {
        this.p$5 = promise;
        this.pf$4 = partialFunction;
    }

    public final Promise<U> apply(Try<T> r5) {
        return this.p$5.complete(r5.recover(this.pf$4));
    }
}
