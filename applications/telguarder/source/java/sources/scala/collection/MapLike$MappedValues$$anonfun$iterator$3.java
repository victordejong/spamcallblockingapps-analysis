package scala.collection;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.MapLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$MappedValues$$anonfun$iterator$3.class */
public final class MapLike$MappedValues$$anonfun$iterator$3 extends AbstractFunction1<Tuple2<A, B>, Tuple2<A, C>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ MapLike.MappedValues $outer;

    public MapLike$MappedValues$$anonfun$iterator$3(MapLike<A, B, This>.MappedValues<C> mappedValues) {
        Objects.requireNonNull(mappedValues);
        this.$outer = mappedValues;
    }

    public final Tuple2<A, C> apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            return new Tuple2<>(tuple2.mo269_1(), this.$outer.scala$collection$MapLike$MappedValues$$f.apply(tuple2.mo268_2()));
        }
        throw new MatchError(tuple2);
    }
}
