package scala.collection.parallel;

import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParMapLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$DefaultValuesIterable$$anonfun$foreach$4.class */
public final class ParMapLike$DefaultValuesIterable$$anonfun$foreach$4 extends AbstractFunction1<Tuple2<K, V>, S> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$2;

    /* JADX WARN: Multi-variable type inference failed */
    public ParMapLike$DefaultValuesIterable$$anonfun$foreach$4(ParMapLike.DefaultValuesIterable defaultValuesIterable, ParMapLike<K, V, Repr, Sequential>.DefaultValuesIterable defaultValuesIterable2) {
        this.f$2 = defaultValuesIterable2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [S, java.lang.Object] */
    public final S apply(Tuple2<K, V> tuple2) {
        if (tuple2 != 0) {
            return this.f$2.apply(tuple2.mo268_2());
        }
        throw new MatchError(tuple2);
    }
}
