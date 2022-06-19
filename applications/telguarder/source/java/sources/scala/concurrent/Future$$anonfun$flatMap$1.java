package scala.concurrent;

import java.util.Objects;
import scala.Function1;
import scala.MatchError;
import scala.Option;
import scala.Serializable;
import scala.concurrent.impl.Promise;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
import scala.util.control.NonFatal$;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$flatMap$1.class */
public final class Future$$anonfun$flatMap$1 extends AbstractFunction1<Try<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future $outer;
    private final Function1 f$4;
    public final Promise.DefaultPromise p$4;

    public Future$$anonfun$flatMap$1(Future future, Promise.DefaultPromise defaultPromise, Function1 function1) {
        Objects.requireNonNull(future);
        this.$outer = future;
        this.p$4 = defaultPromise;
        this.f$4 = function1;
    }

    public final Object apply(Try<T> r5) {
        Promise promise;
        if (r5 instanceof Failure) {
            promise = this.p$4.complete((Failure) r5);
        } else if (!(r5 instanceof Success)) {
            throw new MatchError(r5);
        } else {
            try {
                Future future = (Future) this.f$4.apply(((Success) r5).value());
                if (future instanceof Promise.DefaultPromise) {
                    ((Promise.DefaultPromise) future).linkRootOf(this.p$4);
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                } else {
                    Future$$anonfun$flatMap$1$$anonfun$apply$3 future$$anonfun$flatMap$1$$anonfun$apply$3 = new Future$$anonfun$flatMap$1$$anonfun$apply$3(this);
                    Future future2 = this.$outer;
                    future.onComplete(future$$anonfun$flatMap$1$$anonfun$apply$3, Future$InternalCallbackExecutor$.MODULE$);
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                }
                promise = BoxedUnit.UNIT;
            } catch (Throwable th) {
                Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
                if (unapply.isEmpty()) {
                    throw th;
                }
                promise = this.p$4.failure(unapply.get());
            }
        }
        return promise;
    }
}
