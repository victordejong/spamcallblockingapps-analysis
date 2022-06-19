package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.MapLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$MappedValues$$anonfun$foreach$3.class */
public final class MapLike$MappedValues$$anonfun$foreach$3 extends AbstractFunction1<Tuple2<A, B>, D> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ MapLike.MappedValues $outer;
    private final Function1 g$1;

    public MapLike$MappedValues$$anonfun$foreach$3(MapLike.MappedValues mappedValues, MapLike<A, B, This>.MappedValues<C> mappedValues2) {
        Objects.requireNonNull(mappedValues);
        this.$outer = mappedValues;
        this.g$1 = mappedValues2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [D, java.lang.Object] */
    public final D apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            return this.g$1.apply(new Tuple2(tuple2.mo269_1(), this.$outer.scala$collection$MapLike$MappedValues$$f.apply(tuple2.mo268_2())));
        }
        throw new MatchError(tuple2);
    }
}
