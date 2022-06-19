package scala.collection.parallel;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$scan$1.class */
public final class ParIterableLike$$anonfun$scan$1 extends AbstractFunction1<ParIterableLike<T, Repr, Sequential>.ScanTree<U>, That> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ParIterableLike $outer;
    public final CanBuildFrom bf$6;
    private final Function2 op$1;
    private final Object z$1;

    public ParIterableLike$$anonfun$scan$1(ParIterableLike parIterableLike, Object obj, Function2 function2, CanBuildFrom canBuildFrom) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.z$1 = obj;
        this.op$1 = function2;
        this.bf$6 = canBuildFrom;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [That, java.lang.Object] */
    public final That apply(ParIterableLike<T, Repr, Sequential>.ScanTree<U> scanTree) {
        TaskSupport tasksupport = this.$outer.tasksupport();
        ParIterableLike parIterableLike = this.$outer;
        return tasksupport.executeAndWaitResult(parIterableLike.task2ops(new ParIterableLike.FromScanTree(parIterableLike, scanTree, this.z$1, this.op$1, parIterableLike.combinerFactory(new ParIterableLike$$anonfun$scan$1$$anonfun$apply$3(this)))).mapResult(new ParIterableLike$$anonfun$scan$1$$anonfun$apply$4(this)));
    }

    public /* synthetic */ ParIterableLike scala$collection$parallel$ParIterableLike$$anonfun$$$outer() {
        return this.$outer;
    }
}
