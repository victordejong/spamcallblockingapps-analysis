package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$24.class */
public final class ParIterableLike$CopyToArray$$anonfun$split$24 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, ParIterableLike<T, Repr, Sequential>.CopyToArray<U, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.CopyToArray $outer;

    public ParIterableLike$CopyToArray$$anonfun$split$24(ParIterableLike<T, Repr, Sequential>.CopyToArray<U, This> copyToArray) {
        Objects.requireNonNull(copyToArray);
        this.$outer = copyToArray;
    }

    public final ParIterableLike<T, Repr, Sequential>.CopyToArray<U, This> apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return new ParIterableLike.CopyToArray<>(this.$outer.mo108x65cdc205(), this.$outer.scala$collection$parallel$ParIterableLike$CopyToArray$$from + tuple2._2$mcI$sp(), richInt$.min$extension(((IterableSplitter) tuple2.mo269_1()).remaining(), this.$outer.scala$collection$parallel$ParIterableLike$CopyToArray$$len - tuple2._2$mcI$sp()), this.$outer.scala$collection$parallel$ParIterableLike$CopyToArray$$array, (IterableSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
