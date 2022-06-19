package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$IndexWhere$$anonfun$split$6.class */
public final class ParSeqLike$IndexWhere$$anonfun$split$6 extends AbstractFunction1<Tuple2<SeqSplitter<T>, Object>, ParSeqLike<T, Repr, Sequential>.IndexWhere> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike.IndexWhere $outer;

    public ParSeqLike$IndexWhere$$anonfun$split$6(ParSeqLike<T, Repr, Sequential>.IndexWhere indexWhere) {
        Objects.requireNonNull(indexWhere);
        this.$outer = indexWhere;
    }

    public final ParSeqLike<T, Repr, Sequential>.IndexWhere apply(Tuple2<SeqSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return new ParSeqLike.IndexWhere(this.$outer.mo108x65cdc205(), this.$outer.scala$collection$parallel$ParSeqLike$IndexWhere$$pred, tuple2._2$mcI$sp(), (SeqSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
