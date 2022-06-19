package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.MapLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$FilteredKeys$$anonfun$iterator$1.class */
public final class MapLike$FilteredKeys$$anonfun$iterator$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ MapLike.FilteredKeys $outer;

    public MapLike$FilteredKeys$$anonfun$iterator$1(MapLike<A, B, This>.FilteredKeys filteredKeys) {
        Objects.requireNonNull(filteredKeys);
        this.$outer = filteredKeys;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        return BoxesRunTime.unboxToBoolean(this.$outer.scala$collection$MapLike$FilteredKeys$$p.apply(tuple2.mo269_1()));
    }
}
