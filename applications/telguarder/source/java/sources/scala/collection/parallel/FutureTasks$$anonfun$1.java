package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.concurrent.ExecutionContext;
import scala.concurrent.Future;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks$$anonfun$1.class */
public final class FutureTasks$$anonfun$1 extends AbstractFunction1<Task<R, Tp>, Future<Task<R, Tp>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ FutureTasks $outer;
    private final int depth$1;
    private final ExecutionContext ec$1;

    public FutureTasks$$anonfun$1(FutureTasks futureTasks, ExecutionContext executionContext, int i) {
        Objects.requireNonNull(futureTasks);
        this.$outer = futureTasks;
        this.ec$1 = executionContext;
        this.depth$1 = i;
    }

    public final Future<Task<R, Tp>> apply(Task<R, Tp> task) {
        return this.$outer.scala$collection$parallel$FutureTasks$$compute$1(task, this.depth$1 + 1, this.ec$1);
    }
}
