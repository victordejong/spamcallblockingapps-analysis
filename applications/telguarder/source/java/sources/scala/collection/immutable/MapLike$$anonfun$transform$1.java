package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/MapLike$$anonfun$transform$1.class */
public final class MapLike$$anonfun$transform$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public MapLike$$anonfun$transform$1(MapLike<A, B, This> mapLike) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        return tuple2 != 0;
    }
}
