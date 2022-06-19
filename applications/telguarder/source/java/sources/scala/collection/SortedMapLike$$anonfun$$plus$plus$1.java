package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedMapLike$$anonfun$$plus$plus$1.class */
public final class SortedMapLike$$anonfun$$plus$plus$1 extends AbstractFunction2<SortedMap<A, B1>, Tuple2<A, B1>, SortedMap<A, B1>> implements Serializable {
    public static final long serialVersionUID = 0;

    public SortedMapLike$$anonfun$$plus$plus$1(SortedMapLike<A, B, This> sortedMapLike) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SortedMap<A, B1> apply(SortedMap<A, B1> sortedMap, Tuple2<A, B1> tuple2) {
        return sortedMap.$plus((Tuple2) tuple2);
    }
}
