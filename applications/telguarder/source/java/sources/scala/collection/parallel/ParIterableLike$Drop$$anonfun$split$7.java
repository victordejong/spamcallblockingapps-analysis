package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Drop$$anonfun$split$7.class */
public final class ParIterableLike$Drop$$anonfun$split$7 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, ParIterableLike<T, Repr, Sequential>.Drop<U, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.Drop $outer;

    public ParIterableLike$Drop$$anonfun$split$7(ParIterableLike<T, Repr, Sequential>.Drop<U, This> drop) {
        Objects.requireNonNull(drop);
        this.$outer = drop;
    }

    public final ParIterableLike<T, Repr, Sequential>.Drop<U, This> apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return tuple2._2$mcI$sp() - ((IterableSplitter) tuple2.mo269_1()).remaining() > this.$outer.scala$collection$parallel$ParIterableLike$Drop$$n ? new ParIterableLike.Drop(this.$outer.mo108x65cdc205(), 0, this.$outer.scala$collection$parallel$ParIterableLike$Drop$$cbf, (IterableSplitter) tuple2.mo269_1()) : new ParIterableLike.Drop(this.$outer.mo108x65cdc205(), (this.$outer.scala$collection$parallel$ParIterableLike$Drop$$n - tuple2._2$mcI$sp()) + ((IterableSplitter) tuple2.mo269_1()).remaining(), this.$outer.scala$collection$parallel$ParIterableLike$Drop$$cbf, (IterableSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
