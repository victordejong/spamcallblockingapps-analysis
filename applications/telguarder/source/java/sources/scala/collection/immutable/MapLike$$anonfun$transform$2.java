package scala.collection.immutable;

import scala.Function2;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/MapLike$$anonfun$transform$2.class */
public final class MapLike$$anonfun$transform$2 extends AbstractFunction1<Tuple2<A, B>, Builder<Tuple2<A, C>, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;
    private final Function2 f$2;

    public MapLike$$anonfun$transform$2(MapLike mapLike, Builder builder, Function2 function2) {
        this.b$1 = builder;
        this.f$2 = function2;
    }

    public final Builder<Tuple2<A, C>, That> apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            return this.b$1.$plus$eq((Builder) new Tuple2(tuple2.mo269_1(), this.f$2.apply(tuple2.mo269_1(), tuple2.mo268_2())));
        }
        throw new MatchError(tuple2);
    }
}
