package scala.concurrent;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$foreach$1.class */
public final class Future$$anonfun$foreach$1 extends AbstractFunction1<Try<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Future$$anonfun$foreach$1(Future future, Future<T> future2) {
        this.f$1 = future2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Try) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Try<T> r4) {
        r4.foreach(this.f$1);
    }
}
