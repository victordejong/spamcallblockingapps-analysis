package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.concurrent.Future;
import scala.runtime.AbstractFunction1;
/* renamed from: scala.collection.parallel.FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1.class */
public final class C2581x4ace2172 extends AbstractFunction1<Task<R, Tp>, Future<Task<R, Tp>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ C2583x16c53518 $outer;
    private final Future nextFuture$1;

    public C2581x4ace2172(C2583x16c53518 c2583x16c53518, Future future) {
        Objects.requireNonNull(c2583x16c53518);
        this.$outer = c2583x16c53518;
        this.nextFuture$1 = future;
    }

    public final Future<Task<R, Tp>> apply(Task<R, Tp> task) {
        return this.nextFuture$1.map(new C2580x3f843459(this, task), this.$outer.ec$1);
    }
}
