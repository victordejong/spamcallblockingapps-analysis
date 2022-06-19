package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$MappedValues$$anonfun$foreach$2.class */
public final class MapLike$MappedValues$$anonfun$foreach$2 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public MapLike$MappedValues$$anonfun$foreach$2(MapLike<A, B, This>.MappedValues<C> mappedValues) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        return tuple2 != 0;
    }
}
