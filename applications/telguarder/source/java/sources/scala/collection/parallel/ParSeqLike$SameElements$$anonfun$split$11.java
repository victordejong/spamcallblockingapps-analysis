package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$SameElements$$anonfun$split$11.class */
public final class ParSeqLike$SameElements$$anonfun$split$11 extends AbstractFunction1<Tuple2<SeqSplitter<T>, SeqSplitter<U>>, ParSeqLike<T, Repr, Sequential>.SameElements<U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike.SameElements $outer;

    public ParSeqLike$SameElements$$anonfun$split$11(ParSeqLike<T, Repr, Sequential>.SameElements<U> sameElements) {
        Objects.requireNonNull(sameElements);
        this.$outer = sameElements;
    }

    public final ParSeqLike<T, Repr, Sequential>.SameElements<U> apply(Tuple2<SeqSplitter<T>, SeqSplitter<U>> tuple2) {
        if (tuple2 != 0) {
            return new ParSeqLike.SameElements<>(this.$outer.mo108x65cdc205(), (SeqSplitter) tuple2.mo269_1(), (SeqSplitter) tuple2.mo268_2());
        }
        throw new MatchError(tuple2);
    }
}
