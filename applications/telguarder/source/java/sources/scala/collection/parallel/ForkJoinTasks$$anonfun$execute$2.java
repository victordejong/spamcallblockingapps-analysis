package scala.collection.parallel;

import scala.Serializable;
import scala.collection.parallel.ForkJoinTasks;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ForkJoinTasks$$anonfun$execute$2.class */
public final class ForkJoinTasks$$anonfun$execute$2 extends AbstractFunction0<R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ForkJoinTasks.WrappedTask fjtask$1;

    public ForkJoinTasks$$anonfun$execute$2(ForkJoinTasks forkJoinTasks, ForkJoinTasks.WrappedTask wrappedTask) {
        this.fjtask$1 = wrappedTask;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [R, java.lang.Object] */
    @Override // scala.Function0
    public final R apply() {
        this.fjtask$1.sync();
        this.fjtask$1.body().forwardThrowable();
        return this.fjtask$1.body().result();
    }
}
