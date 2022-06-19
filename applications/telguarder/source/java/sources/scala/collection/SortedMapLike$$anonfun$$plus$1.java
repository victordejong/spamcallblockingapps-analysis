package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedMapLike$$anonfun$$plus$1.class */
public final class SortedMapLike$$anonfun$$plus$1 extends AbstractFunction1<Tuple2<A, B1>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef m$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SortedMapLike$$anonfun$$plus$1(SortedMapLike sortedMapLike, SortedMapLike<A, B, This> sortedMapLike2) {
        this.m$1 = sortedMapLike2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Tuple2) obj);
        return BoxedUnit.UNIT;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, scala.collection.SortedMap] */
    public final void apply(Tuple2<A, B1> tuple2) {
        ObjectRef objectRef = this.m$1;
        objectRef.elem = ((SortedMap) objectRef.elem).$plus((Tuple2) tuple2);
    }
}
