package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.MapLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$FilteredKeys$$anonfun$foreach$1.class */
public final class MapLike$FilteredKeys$$anonfun$foreach$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ MapLike.FilteredKeys $outer;
    private final Function1 f$1;

    public MapLike$FilteredKeys$$anonfun$foreach$1(MapLike.FilteredKeys filteredKeys, MapLike<A, B, This>.FilteredKeys filteredKeys2) {
        Objects.requireNonNull(filteredKeys);
        this.$outer = filteredKeys;
        this.f$1 = filteredKeys2;
    }

    public final Object apply(Tuple2<A, B> tuple2) {
        return BoxesRunTime.unboxToBoolean(this.$outer.scala$collection$MapLike$FilteredKeys$$p.apply(tuple2.mo269_1())) ? this.f$1.apply(tuple2) : BoxedUnit.UNIT;
    }
}
