package scala.collection;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedMapLike$$anon$1$$anonfun$iteratorFrom$1.class */
public final class SortedMapLike$$anon$1$$anonfun$iteratorFrom$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SortedMapLike$$anon$1 $outer;

    public SortedMapLike$$anon$1$$anonfun$iteratorFrom$1(SortedMapLike$$anon$1 sortedMapLike$$anon$1) {
        Objects.requireNonNull(sortedMapLike$$anon$1);
        this.$outer = sortedMapLike$$anon$1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<A, B> tuple2) {
        if (tuple2 != 0) {
            return BoxesRunTime.unboxToBoolean(this.$outer.p$1.apply(tuple2.mo269_1()));
        }
        throw new MatchError(tuple2);
    }
}
