package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.collection.mutable.ArraySeq;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.mutable.ParArray;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$$anonfun$scan$1.class */
public final class ParArray$$anonfun$scan$1 extends AbstractFunction1<ParIterableLike<T, ParArray<T>, ArraySeq<T>>.ScanTree<U>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParArray $outer;
    private final Function2 op$1;
    private final Object[] targetarr$1;
    private final Object z$1;

    public ParArray$$anonfun$scan$1(ParArray parArray, Object obj, Function2 function2, Object[] objArr) {
        Objects.requireNonNull(parArray);
        this.$outer = parArray;
        this.z$1 = obj;
        this.op$1 = function2;
        this.targetarr$1 = objArr;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((ParIterableLike.ScanTree) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(ParIterableLike<T, ParArray<T>, ArraySeq<T>>.ScanTree<U> scanTree) {
        this.$outer.tasksupport().executeAndWaitResult(new ParArray.ScanToArray(this.$outer, scanTree, this.z$1, this.op$1, this.targetarr$1));
    }
}
