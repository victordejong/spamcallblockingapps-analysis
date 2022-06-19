package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Promise$$anonfun$tryCompleteWith$1.class */
public final class Promise$$anonfun$tryCompleteWith$1 extends AbstractFunction1<Try<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Promise $outer;

    public Promise$$anonfun$tryCompleteWith$1(Promise<T> promise) {
        Objects.requireNonNull(promise);
        this.$outer = promise;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Try) obj));
    }

    public final boolean apply(Try<T> r4) {
        return this.$outer.tryComplete(r4);
    }
}
