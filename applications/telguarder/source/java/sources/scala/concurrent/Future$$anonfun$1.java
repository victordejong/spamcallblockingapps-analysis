package scala.concurrent;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$1.class */
public final class Future$$anonfun$1 extends AbstractFunction1<Try<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Promise p$10;

    public Future$$anonfun$1(Promise promise) {
        this.p$10 = promise;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Try) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Try<T> r4) {
        this.p$10.tryComplete(r4);
    }
}
