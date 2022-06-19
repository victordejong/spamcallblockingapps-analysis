package scala.collection.immutable;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedMap$$anon$2$$anonfun$iteratorFrom$2.class */
public final class SortedMap$$anon$2$$anonfun$iteratorFrom$2 extends AbstractFunction1<Tuple2<A, B>, Tuple2<A, C>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SortedMap$$anon$2 $outer;

    public SortedMap$$anon$2$$anonfun$iteratorFrom$2(SortedMap$$anon$2 sortedMap$$anon$2) {
        Objects.requireNonNull(sortedMap$$anon$2);
        this.$outer = sortedMap$$anon$2;
    }

    public final Tuple2<A, C> apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            return new Tuple2<>(tuple2.mo269_1(), this.$outer.f$1.apply(tuple2.mo268_2()));
        }
        throw new MatchError(tuple2);
    }
}
