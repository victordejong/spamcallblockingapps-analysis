package scala.collection.parallel;

import scala.Serializable;
import scala.collection.parallel.ThreadPoolTasks;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ThreadPoolTasks$$anonfun$execute$1.class */
public final class ThreadPoolTasks$$anonfun$execute$1 extends AbstractFunction0<R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ThreadPoolTasks.WrappedTask t$1;

    public ThreadPoolTasks$$anonfun$execute$1(ThreadPoolTasks threadPoolTasks, ThreadPoolTasks.WrappedTask wrappedTask) {
        this.t$1 = wrappedTask;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [R, java.lang.Object] */
    @Override // scala.Function0
    public final R apply() {
        this.t$1.sync();
        this.t$1.body().forwardThrowable();
        return this.t$1.body().result();
    }
}
