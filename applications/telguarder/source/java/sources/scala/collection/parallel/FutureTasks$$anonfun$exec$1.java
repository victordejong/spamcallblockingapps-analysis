package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks$$anonfun$exec$1.class */
public final class FutureTasks$$anonfun$exec$1 extends AbstractFunction1<Task<R, Tp>, R> implements Serializable {
    public static final long serialVersionUID = 0;

    public FutureTasks$$anonfun$exec$1(FutureTasks futureTasks) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Task<Object, Tp>) obj);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
    public final R apply(Task<R, Tp> task) {
        task.forwardThrowable();
        return task.result();
    }
}
