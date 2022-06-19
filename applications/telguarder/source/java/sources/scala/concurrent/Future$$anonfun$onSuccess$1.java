package scala.concurrent;

import scala.PartialFunction;
import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.Success;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$onSuccess$1.class */
public final class Future$$anonfun$onSuccess$1 extends AbstractFunction1<Try<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final PartialFunction pf$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Future$$anonfun$onSuccess$1(Future future, Future<T> future2) {
        this.pf$1 = future2;
    }

    public final Object apply(Try<T> r5) {
        return r5 instanceof Success ? this.pf$1.applyOrElse(((Success) r5).value(), Predef$.MODULE$.conforms()) : BoxedUnit.UNIT;
    }
}
