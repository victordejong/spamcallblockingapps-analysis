package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$SegmentLength$$anonfun$split$3.class */
public final class ParSeqLike$SegmentLength$$anonfun$split$3 extends AbstractFunction1<Tuple2<SeqSplitter<T>, Object>, ParSeqLike<T, Repr, Sequential>.SegmentLength> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike.SegmentLength $outer;

    public ParSeqLike$SegmentLength$$anonfun$split$3(ParSeqLike<T, Repr, Sequential>.SegmentLength segmentLength) {
        Objects.requireNonNull(segmentLength);
        this.$outer = segmentLength;
    }

    public final ParSeqLike<T, Repr, Sequential>.SegmentLength apply(Tuple2<SeqSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return new ParSeqLike.SegmentLength(this.$outer.mo108x65cdc205(), this.$outer.scala$collection$parallel$ParSeqLike$SegmentLength$$pred, this.$outer.scala$collection$parallel$ParSeqLike$SegmentLength$$from + tuple2._2$mcI$sp(), (SeqSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
