package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Slice$$anonfun$split$10.class */
public final class ParIterableLike$Slice$$anonfun$split$10 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, ParIterableLike<T, Repr, Sequential>.Slice<U, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.Slice $outer;

    public ParIterableLike$Slice$$anonfun$split$10(ParIterableLike<T, Repr, Sequential>.Slice<U, This> slice) {
        Objects.requireNonNull(slice);
        this.$outer = slice;
    }

    public final ParIterableLike<T, Repr, Sequential>.Slice<U, This> apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int max$extension = richInt$.max$extension(this.$outer.scala$collection$parallel$ParIterableLike$Slice$$from, tuple2._2$mcI$sp());
            int _2$mcI$sp = tuple2._2$mcI$sp();
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            return new ParIterableLike.Slice<>(this.$outer.mo108x65cdc205(), max$extension - _2$mcI$sp, richInt$2.min$extension(this.$outer.scala$collection$parallel$ParIterableLike$Slice$$until, tuple2._2$mcI$sp() + ((IterableSplitter) tuple2.mo269_1()).remaining()) - tuple2._2$mcI$sp(), this.$outer.scala$collection$parallel$ParIterableLike$Slice$$cbf, (IterableSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
