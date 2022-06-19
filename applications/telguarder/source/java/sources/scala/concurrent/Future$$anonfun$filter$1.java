package scala.concurrent;

import java.util.NoSuchElementException;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$filter$1.class */
public final class Future$$anonfun$filter$1 extends AbstractFunction1<T, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 p$12;

    /* JADX WARN: Multi-variable type inference failed */
    public Future$$anonfun$filter$1(Future future, Future<T> future2) {
        this.p$12 = future2;
    }

    @Override // scala.Function1
    public final T apply(T t) {
        if (BoxesRunTime.unboxToBoolean(this.p$12.apply(t))) {
            return t;
        }
        throw new NoSuchElementException("Future.filter predicate is not satisfied");
    }
}
