package scala.concurrent;

import scala.MatchError;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$zip$1.class */
public final class Future$$anonfun$zip$1 extends AbstractFunction1<Try<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Future$InternalCallbackExecutor$ ec$1;
    public final Promise p$7;
    private final Future that$1;

    public Future$$anonfun$zip$1(Future future, Future$InternalCallbackExecutor$ future$InternalCallbackExecutor$, Promise promise, Future future2) {
        this.ec$1 = future$InternalCallbackExecutor$;
        this.p$7 = promise;
        this.that$1 = future2;
    }

    public final Object apply(Try<T> r7) {
        Promise promise;
        if (r7 instanceof Failure) {
            promise = this.p$7.complete((Failure) r7);
        } else if (!(r7 instanceof Success)) {
            throw new MatchError(r7);
        } else {
            this.that$1.onComplete(new Future$$anonfun$zip$1$$anonfun$apply$7(this, (Success) r7), this.ec$1);
            promise = BoxedUnit.UNIT;
        }
        return promise;
    }
}
