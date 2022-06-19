package scala.concurrent;

import scala.Serializable;
import scala.concurrent.duration.Duration;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Await$$anonfun$ready$1.class */
public final class Await$$anonfun$ready$1 extends AbstractFunction0<Awaitable<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Duration atMost$2;
    private final Awaitable awaitable$2;

    public Await$$anonfun$ready$1(Awaitable awaitable, Duration duration) {
        this.awaitable$2 = awaitable;
        this.atMost$2 = duration;
    }

    @Override // scala.Function0
    public final Awaitable<T> apply() {
        return this.awaitable$2.ready(this.atMost$2, AwaitPermission$.MODULE$);
    }
}
