package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Take$$anonfun$split$4.class */
public final class ParIterableLike$Take$$anonfun$split$4 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, ParIterableLike<T, Repr, Sequential>.Take<U, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.Take $outer;

    public ParIterableLike$Take$$anonfun$split$4(ParIterableLike<T, Repr, Sequential>.Take<U, This> take) {
        Objects.requireNonNull(take);
        this.$outer = take;
    }

    public final ParIterableLike<T, Repr, Sequential>.Take<U, This> apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return tuple2._2$mcI$sp() + ((IterableSplitter) tuple2.mo269_1()).remaining() < this.$outer.scala$collection$parallel$ParIterableLike$Take$$n ? new ParIterableLike.Take(this.$outer.mo108x65cdc205(), ((IterableSplitter) tuple2.mo269_1()).remaining(), this.$outer.scala$collection$parallel$ParIterableLike$Take$$cbf, (IterableSplitter) tuple2.mo269_1()) : new ParIterableLike.Take(this.$outer.mo108x65cdc205(), this.$outer.scala$collection$parallel$ParIterableLike$Take$$n - tuple2._2$mcI$sp(), this.$outer.scala$collection$parallel$ParIterableLike$Take$$cbf, (IterableSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
