package scala.collection.immutable;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedMap$$anon$1$$anonfun$iteratorFrom$1.class */
public final class SortedMap$$anon$1$$anonfun$iteratorFrom$1 extends AbstractFunction1<Tuple2<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SortedMap$$anon$1 $outer;

    public SortedMap$$anon$1$$anonfun$iteratorFrom$1(SortedMap$$anon$1 sortedMap$$anon$1) {
        Objects.requireNonNull(sortedMap$$anon$1);
        this.$outer = sortedMap$$anon$1;
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
