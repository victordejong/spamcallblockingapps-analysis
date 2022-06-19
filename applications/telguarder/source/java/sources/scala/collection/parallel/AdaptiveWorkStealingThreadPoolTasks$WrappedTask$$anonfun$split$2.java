package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.parallel.AdaptiveWorkStealingThreadPoolTasks;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask$$anonfun$split$2.class */
public final class AdaptiveWorkStealingThreadPoolTasks$WrappedTask$$anonfun$split$2 extends AbstractFunction1<Task<R, Tp>, AdaptiveWorkStealingThreadPoolTasks.WrappedTask<R, Tp>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ AdaptiveWorkStealingThreadPoolTasks.WrappedTask $outer;

    public AdaptiveWorkStealingThreadPoolTasks$WrappedTask$$anonfun$split$2(AdaptiveWorkStealingThreadPoolTasks.WrappedTask<R, Tp> wrappedTask) {
        Objects.requireNonNull(wrappedTask);
        this.$outer = wrappedTask;
    }

    public final AdaptiveWorkStealingThreadPoolTasks.WrappedTask<R, Tp> apply(Task<R, Tp> task) {
        return this.$outer.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer().newWrappedTask((Task) task);
    }
}
