package scala.concurrent;

import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
import scala.util.Try$;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$transform$1.class */
public final class Future$$anonfun$transform$1 extends AbstractFunction1<Try<T>, Promise<S>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Function1 f$2;
    private final Promise p$2;
    public final Function1 s$1;

    public Future$$anonfun$transform$1(Future future, Promise promise, Function1 function1, Function1 function12) {
        this.p$2 = promise;
        this.s$1 = function1;
        this.f$2 = function12;
    }

    public final Promise<S> apply(Try<T> r8) {
        Promise promise;
        if (r8 instanceof Success) {
            promise = this.p$2.complete(Try$.MODULE$.apply(new Future$$anonfun$transform$1$$anonfun$apply$1(this, (Success) r8)));
        } else if (!(r8 instanceof Failure)) {
            throw new MatchError(r8);
        } else {
            promise = this.p$2.complete(Try$.MODULE$.apply(new Future$$anonfun$transform$1$$anonfun$apply$2(this, (Failure) r8)));
        }
        return promise;
    }
}
