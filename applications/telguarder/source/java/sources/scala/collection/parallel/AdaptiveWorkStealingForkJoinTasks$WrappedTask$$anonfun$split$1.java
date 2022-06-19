package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.parallel.AdaptiveWorkStealingForkJoinTasks;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask$$anonfun$split$1.class */
public final class AdaptiveWorkStealingForkJoinTasks$WrappedTask$$anonfun$split$1 extends AbstractFunction1<Task<R, Tp>, AdaptiveWorkStealingForkJoinTasks.WrappedTask<R, Tp>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ AdaptiveWorkStealingForkJoinTasks.WrappedTask $outer;

    public AdaptiveWorkStealingForkJoinTasks$WrappedTask$$anonfun$split$1(AdaptiveWorkStealingForkJoinTasks.WrappedTask<R, Tp> wrappedTask) {
        Objects.requireNonNull(wrappedTask);
        this.$outer = wrappedTask;
    }

    public final AdaptiveWorkStealingForkJoinTasks.WrappedTask<R, Tp> apply(Task<R, Tp> task) {
        return this.$outer.scala$collection$parallel$Tasks$WrappedTask$$$outer().newWrappedTask((Task) task);
    }
}
