package scala.collection.mutable;

import java.util.Objects;
import scala.Function2;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MapLike$$anonfun$transform$1.class */
public final class MapLike$$anonfun$transform$1 extends AbstractFunction1<Tuple2<A, B>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ MapLike $outer;
    private final Function2 f$1;

    /* JADX WARN: Multi-variable type inference failed */
    public MapLike$$anonfun$transform$1(MapLike mapLike, MapLike<A, B, This> mapLike2) {
        Objects.requireNonNull(mapLike);
        this.$outer = mapLike;
        this.f$1 = mapLike2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Tuple2) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            this.$outer.update(tuple2.mo269_1(), this.f$1.apply(tuple2.mo269_1(), tuple2.mo268_2()));
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            return;
        }
        throw new MatchError(tuple2);
    }
}
