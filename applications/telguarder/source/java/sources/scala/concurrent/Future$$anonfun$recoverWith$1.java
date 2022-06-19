package scala.concurrent;

import java.util.Objects;
import scala.Option;
import scala.PartialFunction;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.Failure;
import scala.util.Try;
import scala.util.control.NonFatal$;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$recoverWith$1.class */
public final class Future$$anonfun$recoverWith$1 extends AbstractFunction1<Try<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Future $outer;
    public final Promise p$6;
    private final PartialFunction pf$5;

    public Future$$anonfun$recoverWith$1(Future future, Promise promise, PartialFunction partialFunction) {
        Objects.requireNonNull(future);
        this.$outer = future;
        this.p$6 = promise;
        this.pf$5 = partialFunction;
    }

    public final Object apply(Try<T> r5) {
        BoxedUnit boxedUnit;
        if (r5 instanceof Failure) {
            try {
                Future future = (Future) this.pf$5.applyOrElse(((Failure) r5).exception(), new Future$$anonfun$recoverWith$1$$anonfun$apply$5(this));
                Future$$anonfun$recoverWith$1$$anonfun$apply$6 future$$anonfun$recoverWith$1$$anonfun$apply$6 = new Future$$anonfun$recoverWith$1$$anonfun$apply$6(this);
                Future future2 = this.$outer;
                future.onComplete(future$$anonfun$recoverWith$1$$anonfun$apply$6, Future$InternalCallbackExecutor$.MODULE$);
                boxedUnit = BoxedUnit.UNIT;
            } catch (Throwable th) {
                Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
                if (unapply.isEmpty()) {
                    throw th;
                }
                boxedUnit = this.p$6.failure(unapply.get());
            }
        } else {
            boxedUnit = this.p$6.complete(r5);
        }
        return boxedUnit;
    }

    public /* synthetic */ Future scala$concurrent$Future$$anonfun$$$outer() {
        return this.$outer;
    }
}
