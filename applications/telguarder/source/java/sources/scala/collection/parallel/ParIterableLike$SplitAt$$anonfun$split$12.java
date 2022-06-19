package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12.class */
public final class ParIterableLike$SplitAt$$anonfun$split$12 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, ParIterableLike<T, Repr, Sequential>.SplitAt<U, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.SplitAt $outer;

    public ParIterableLike$SplitAt$$anonfun$split$12(ParIterableLike<T, Repr, Sequential>.SplitAt<U, This> splitAt) {
        Objects.requireNonNull(splitAt);
        this.$outer = splitAt;
    }

    public final ParIterableLike<T, Repr, Sequential>.SplitAt<U, This> apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            ParIterableLike mo108x65cdc205 = this.$outer.mo108x65cdc205();
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            return new ParIterableLike.SplitAt<>(mo108x65cdc205, richInt$.min$extension(richInt$2.max$extension(this.$outer.scala$collection$parallel$ParIterableLike$SplitAt$$at, tuple2._2$mcI$sp()), tuple2._2$mcI$sp() + ((IterableSplitter) tuple2.mo269_1()).remaining()) - tuple2._2$mcI$sp(), this.$outer.scala$collection$parallel$ParIterableLike$SplitAt$$cbfBefore, this.$outer.scala$collection$parallel$ParIterableLike$SplitAt$$cbfAfter, (IterableSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
