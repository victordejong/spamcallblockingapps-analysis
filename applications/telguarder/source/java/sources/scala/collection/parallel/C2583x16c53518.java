package scala.collection.parallel;

import scala.Serializable;
import scala.concurrent.ExecutionContext;
import scala.concurrent.Future;
import scala.runtime.AbstractFunction2;
/* renamed from: scala.collection.parallel.FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2.class */
public final class C2583x16c53518 extends AbstractFunction2<Future<Task<R, Tp>>, Future<Task<R, Tp>>, Future<Task<R, Tp>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final ExecutionContext ec$1;

    public C2583x16c53518(FutureTasks futureTasks, ExecutionContext executionContext) {
        this.ec$1 = executionContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Future<Task<R, Tp>> apply(Future<Task<R, Tp>> future, Future<Task<R, Tp>> future2) {
        return future.flatMap(new C2581x4ace2172(this, future2), this.ec$1);
    }
}
