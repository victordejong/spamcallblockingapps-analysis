package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$15.class */
public final class ParIterableLike$TakeWhile$$anonfun$split$15 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, ParIterableLike<T, Repr, Sequential>.TakeWhile<U, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.TakeWhile $outer;

    public ParIterableLike$TakeWhile$$anonfun$split$15(ParIterableLike<T, Repr, Sequential>.TakeWhile<U, This> takeWhile) {
        Objects.requireNonNull(takeWhile);
        this.$outer = takeWhile;
    }

    public final ParIterableLike<T, Repr, Sequential>.TakeWhile<U, This> apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return new ParIterableLike.TakeWhile<>(this.$outer.mo108x65cdc205(), tuple2._2$mcI$sp() + this.$outer.scala$collection$parallel$ParIterableLike$TakeWhile$$pos, this.$outer.scala$collection$parallel$ParIterableLike$TakeWhile$$pred, this.$outer.scala$collection$parallel$ParIterableLike$TakeWhile$$cbf, (IterableSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
