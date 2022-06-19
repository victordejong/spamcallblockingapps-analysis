package scala.collection.parallel;

import scala.None$;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* renamed from: scala.collection.parallel.FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3.class */
public final class C2584x16c53519 extends AbstractFunction0<Task<R, Tp>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Task task$1;

    public C2584x16c53519(FutureTasks futureTasks, Task task) {
        this.task$1 = task;
    }

    @Override // scala.Function0
    public final Task<R, Tp> apply() {
        this.task$1.tryLeaf(None$.MODULE$);
        return this.task$1;
    }
}
