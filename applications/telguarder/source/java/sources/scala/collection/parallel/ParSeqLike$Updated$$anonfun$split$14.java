package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14.class */
public final class ParSeqLike$Updated$$anonfun$split$14 extends AbstractFunction1<Tuple2<SeqSplitter<T>, Object>, ParSeqLike<T, Repr, Sequential>.Updated<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike.Updated $outer;

    public ParSeqLike$Updated$$anonfun$split$14(ParSeqLike<T, Repr, Sequential>.Updated<U, That> updated) {
        Objects.requireNonNull(updated);
        this.$outer = updated;
    }

    public final ParSeqLike<T, Repr, Sequential>.Updated<U, That> apply(Tuple2<SeqSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return new ParSeqLike.Updated<>(this.$outer.mo108x65cdc205(), this.$outer.scala$collection$parallel$ParSeqLike$Updated$$pos - tuple2._2$mcI$sp(), this.$outer.scala$collection$parallel$ParSeqLike$Updated$$elem, this.$outer.scala$collection$parallel$ParSeqLike$Updated$$pbf, (SeqSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
