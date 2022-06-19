package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Span$$anonfun$split$18.class */
public final class ParIterableLike$Span$$anonfun$split$18 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, ParIterableLike<T, Repr, Sequential>.Span<U, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.Span $outer;

    public ParIterableLike$Span$$anonfun$split$18(ParIterableLike<T, Repr, Sequential>.Span<U, This> span) {
        Objects.requireNonNull(span);
        this.$outer = span;
    }

    public final ParIterableLike<T, Repr, Sequential>.Span<U, This> apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return new ParIterableLike.Span<>(this.$outer.mo108x65cdc205(), tuple2._2$mcI$sp() + this.$outer.scala$collection$parallel$ParIterableLike$Span$$pos, this.$outer.scala$collection$parallel$ParIterableLike$Span$$pred, this.$outer.scala$collection$parallel$ParIterableLike$Span$$cbfBefore, this.$outer.scala$collection$parallel$ParIterableLike$Span$$cbfAfter, (IterableSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
