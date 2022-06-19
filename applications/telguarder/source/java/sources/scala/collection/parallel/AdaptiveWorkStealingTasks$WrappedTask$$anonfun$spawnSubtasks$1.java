package scala.collection.parallel;

import scala.Serializable;
import scala.collection.parallel.AdaptiveWorkStealingTasks;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1.class */
public final class AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1 extends AbstractFunction1<AdaptiveWorkStealingTasks.WrappedTask<R, Tp>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef last$1;

    /* JADX WARN: Multi-variable type inference failed */
    public AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1(AdaptiveWorkStealingTasks.WrappedTask wrappedTask, AdaptiveWorkStealingTasks.WrappedTask<R, Tp> wrappedTask2) {
        this.last$1 = wrappedTask2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((AdaptiveWorkStealingTasks.WrappedTask) obj);
        return BoxedUnit.UNIT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void apply(AdaptiveWorkStealingTasks.WrappedTask<R, Tp> wrappedTask) {
        wrappedTask.next_$eq((AdaptiveWorkStealingTasks.WrappedTask) this.last$1.elem);
        this.last$1.elem = wrappedTask;
        wrappedTask.start();
    }
}
