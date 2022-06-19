package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$5.class */
public final class Future$$anonfun$recoverWith$1$$anonfun$apply$5 extends AbstractFunction1<Throwable, Future<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$recoverWith$1 $outer;

    public Future$$anonfun$recoverWith$1$$anonfun$apply$5(Future$$anonfun$recoverWith$1 future$$anonfun$recoverWith$1) {
        Objects.requireNonNull(future$$anonfun$recoverWith$1);
        this.$outer = future$$anonfun$recoverWith$1;
    }

    public final Future<T> apply(Throwable th) {
        return this.$outer.$outer;
    }
}
