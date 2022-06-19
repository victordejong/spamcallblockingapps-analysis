package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$9.class */
public final class ParSeqLike$LastIndexWhere$$anonfun$split$9 extends AbstractFunction1<Tuple2<SeqSplitter<T>, Object>, ParSeqLike<T, Repr, Sequential>.LastIndexWhere> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike.LastIndexWhere $outer;

    public ParSeqLike$LastIndexWhere$$anonfun$split$9(ParSeqLike<T, Repr, Sequential>.LastIndexWhere lastIndexWhere) {
        Objects.requireNonNull(lastIndexWhere);
        this.$outer = lastIndexWhere;
    }

    public final ParSeqLike<T, Repr, Sequential>.LastIndexWhere apply(Tuple2<SeqSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return new ParSeqLike.LastIndexWhere(this.$outer.mo108x65cdc205(), this.$outer.scala$collection$parallel$ParSeqLike$LastIndexWhere$$pred, tuple2._2$mcI$sp(), (SeqSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
