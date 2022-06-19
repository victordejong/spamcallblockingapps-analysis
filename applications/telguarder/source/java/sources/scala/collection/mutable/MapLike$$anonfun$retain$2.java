package scala.collection.mutable;

import java.util.Objects;
import scala.Function2;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MapLike$$anonfun$retain$2.class */
public final class MapLike$$anonfun$retain$2 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ MapLike $outer;
    private final Function2 p$1;

    /* JADX WARN: Multi-variable type inference failed */
    public MapLike$$anonfun$retain$2(MapLike mapLike, MapLike<A, B, This> mapLike2) {
        Objects.requireNonNull(mapLike);
        this.$outer = mapLike;
        this.p$1 = mapLike2;
    }

    public final Object apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            return BoxesRunTime.unboxToBoolean(this.p$1.apply(tuple2.mo269_1(), tuple2.mo268_2())) ? BoxedUnit.UNIT : this.$outer.$minus$eq((MapLike) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
