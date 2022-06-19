package scala.concurrent;

import java.util.concurrent.Future;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/ThreadPoolRunner$$anonfun$futureAsFunction$1.class */
public final class ThreadPoolRunner$$anonfun$futureAsFunction$1 extends AbstractFunction0<S> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Future x$1;

    public ThreadPoolRunner$$anonfun$futureAsFunction$1(ThreadPoolRunner threadPoolRunner, Future future) {
        this.x$1 = future;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [S, java.lang.Object] */
    @Override // scala.Function0
    public final S apply() {
        return this.x$1.get();
    }
}
