package scala.concurrent;

import scala.MatchError;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$fallbackTo$1.class */
public final class Future$$anonfun$fallbackTo$1 extends AbstractFunction1<Try<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Future$InternalCallbackExecutor$ ec$2;
    public final Promise p$8;
    private final Future that$2;

    public Future$$anonfun$fallbackTo$1(Future future, Future$InternalCallbackExecutor$ future$InternalCallbackExecutor$, Promise promise, Future future2) {
        this.ec$2 = future$InternalCallbackExecutor$;
        this.p$8 = promise;
        this.that$2 = future2;
    }

    public final Object apply(Try<T> r7) {
        Promise promise;
        if (r7 instanceof Success) {
            promise = this.p$8.complete((Success) r7);
        } else if (!(r7 instanceof Failure)) {
            throw new MatchError(r7);
        } else {
            this.that$2.onComplete(new Future$$anonfun$fallbackTo$1$$anonfun$apply$9(this, (Failure) r7), this.ec$2);
            promise = BoxedUnit.UNIT;
        }
        return promise;
    }
}
