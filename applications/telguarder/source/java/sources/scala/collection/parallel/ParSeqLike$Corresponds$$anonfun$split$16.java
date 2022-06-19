package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Corresponds$$anonfun$split$16.class */
public final class ParSeqLike$Corresponds$$anonfun$split$16 extends AbstractFunction1<Tuple2<SeqSplitter<T>, SeqSplitter<S>>, ParSeqLike<T, Repr, Sequential>.Corresponds<S>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike.Corresponds $outer;

    public ParSeqLike$Corresponds$$anonfun$split$16(ParSeqLike<T, Repr, Sequential>.Corresponds<S> corresponds) {
        Objects.requireNonNull(corresponds);
        this.$outer = corresponds;
    }

    public final ParSeqLike<T, Repr, Sequential>.Corresponds<S> apply(Tuple2<SeqSplitter<T>, SeqSplitter<S>> tuple2) {
        if (tuple2 != 0) {
            return new ParSeqLike.Corresponds<>(this.$outer.mo108x65cdc205(), this.$outer.scala$collection$parallel$ParSeqLike$Corresponds$$corr, (SeqSplitter) tuple2.mo269_1(), (SeqSplitter) tuple2.mo268_2());
        }
        throw new MatchError(tuple2);
    }
}
