package scala.collection;

import scala.MatchError;
import scala.Predef$;
import scala.Predef$any2stringadd$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$$anonfun$addString$1.class */
public final class MapLike$$anonfun$addString$1 extends AbstractFunction1<Tuple2<A, B>, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public MapLike$$anonfun$addString$1(MapLike<A, B, This> mapLike) {
    }

    public final String apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            return new StringBuilder().append((Object) Predef$any2stringadd$.MODULE$.$plus$extension(Predef$.MODULE$.any2stringadd(tuple2.mo269_1()), " -> ")).append(tuple2.mo268_2()).toString();
        }
        throw new MatchError(tuple2);
    }
}
