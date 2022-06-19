package scala.concurrent;

import scala.PartialFunction;
import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$andThen$1.class */
public final class Future$$anonfun$andThen$1 extends AbstractFunction1<Try<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Promise p$9;
    private final PartialFunction pf$6;

    public Future$$anonfun$andThen$1(Future future, Promise promise, PartialFunction partialFunction) {
        this.p$9 = promise;
        this.pf$6 = partialFunction;
    }

    public final Object apply(Try<T> r5) {
        try {
            return this.pf$6.applyOrElse(r5, Predef$.MODULE$.conforms());
        } finally {
            this.p$9.complete(r5);
        }
    }
}
