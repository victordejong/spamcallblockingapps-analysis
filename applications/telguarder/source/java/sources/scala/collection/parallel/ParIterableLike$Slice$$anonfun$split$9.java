package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Slice$$anonfun$split$9.class */
public final class ParIterableLike$Slice$$anonfun$split$9 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.Slice $outer;

    public ParIterableLike$Slice$$anonfun$split$9(ParIterableLike<T, Repr, Sequential>.Slice<U, This> slice) {
        Objects.requireNonNull(slice);
        this.$outer = slice;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return tuple2._2$mcI$sp() + ((IterableSplitter) tuple2.mo269_1()).remaining() >= this.$outer.scala$collection$parallel$ParIterableLike$Slice$$from || tuple2._2$mcI$sp() <= this.$outer.scala$collection$parallel$ParIterableLike$Slice$$until;
        }
        throw new MatchError(tuple2);
    }
}
