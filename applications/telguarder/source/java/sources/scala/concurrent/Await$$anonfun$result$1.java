package scala.concurrent;

import scala.Serializable;
import scala.concurrent.duration.Duration;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Await$$anonfun$result$1.class */
public final class Await$$anonfun$result$1 extends AbstractFunction0<T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Duration atMost$1;
    private final Awaitable awaitable$1;

    public Await$$anonfun$result$1(Awaitable awaitable, Duration duration) {
        this.awaitable$1 = awaitable;
        this.atMost$1 = duration;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // scala.Function0
    public final T apply() {
        return this.awaitable$1.result(this.atMost$1, AwaitPermission$.MODULE$);
    }
}
