package scala.collection.parallel;

import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParMapLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$DefaultKeySet$$anonfun$foreach$2.class */
public final class ParMapLike$DefaultKeySet$$anonfun$foreach$2 extends AbstractFunction1<Tuple2<K, V>, S> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$1;

    public ParMapLike$DefaultKeySet$$anonfun$foreach$2(ParMapLike.DefaultKeySet defaultKeySet, ParMapLike<K, V, Repr, Sequential>.DefaultKeySet defaultKeySet2) {
        this.f$1 = defaultKeySet2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [S, java.lang.Object] */
    public final S apply(Tuple2<K, V> tuple2) {
        if (tuple2 != 0) {
            return this.f$1.apply(tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
