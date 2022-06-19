package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$$anonfun$$plus$plus$1.class */
public final class MapLike$$anonfun$$plus$plus$1 extends AbstractFunction2<Map<A, B1>, Tuple2<A, B1>, Map<A, B1>> implements Serializable {
    public static final long serialVersionUID = 0;

    public MapLike$$anonfun$$plus$plus$1(MapLike<A, B, This> mapLike) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map<A, B1> apply(Map<A, B1> map, Tuple2<A, B1> tuple2) {
        return map.$plus((Tuple2) tuple2);
    }
}
