package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* renamed from: scala.collection.parallel.FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1$$anonfun$apply$2 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1$$anonfun$apply$2.class */
public final class C2580x3f843459 extends AbstractFunction1<Task<R, Tp>, Task<R, Tp>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Task firstTask$1;

    public C2580x3f843459(C2581x4ace2172 c2581x4ace2172, Task task) {
        this.firstTask$1 = task;
    }

    public final Task<R, Tp> apply(Task<R, Tp> task) {
        this.firstTask$1.tryMerge(task.repr());
        return this.firstTask$1;
    }
}
