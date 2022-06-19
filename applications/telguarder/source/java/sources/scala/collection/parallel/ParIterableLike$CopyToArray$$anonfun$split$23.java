package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$23.class */
public final class ParIterableLike$CopyToArray$$anonfun$split$23 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.CopyToArray $outer;

    public ParIterableLike$CopyToArray$$anonfun$split$23(ParIterableLike<T, Repr, Sequential>.CopyToArray<U, This> copyToArray) {
        Objects.requireNonNull(copyToArray);
        this.$outer = copyToArray;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return tuple2._2$mcI$sp() < this.$outer.scala$collection$parallel$ParIterableLike$CopyToArray$$len;
        }
        throw new MatchError(tuple2);
    }
}
