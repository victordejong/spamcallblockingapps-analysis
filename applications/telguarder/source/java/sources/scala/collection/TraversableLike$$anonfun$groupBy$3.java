package scala.collection;

import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.Map;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$groupBy$3.class */
public final class TraversableLike$$anonfun$groupBy$3 extends AbstractFunction1<Tuple2<K, Builder<A, Repr>>, Builder<Tuple2<K, Repr>, Map<K, Repr>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$5;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableLike$$anonfun$groupBy$3(TraversableLike traversableLike, TraversableLike<A, Repr> traversableLike2) {
        this.b$5 = traversableLike2;
    }

    public final Builder<Tuple2<K, Repr>, Map<K, Repr>> apply(Tuple2<K, Builder<A, Repr>> tuple2) {
        if (tuple2 != 0) {
            return this.b$5.$plus$eq((Builder) new Tuple2(tuple2.mo269_1(), ((Builder) tuple2.mo268_2()).result()));
        }
        throw new MatchError(tuple2);
    }
}
