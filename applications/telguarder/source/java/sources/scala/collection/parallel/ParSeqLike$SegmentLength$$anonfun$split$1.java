package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$SegmentLength$$anonfun$split$1.class */
public final class ParSeqLike$SegmentLength$$anonfun$split$1 extends AbstractFunction2<Object, SeqSplitter<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$SegmentLength$$anonfun$split$1(ParSeqLike<T, Repr, Sequential>.SegmentLength segmentLength) {
    }

    public final int apply(int i, SeqSplitter<T> seqSplitter) {
        return i + seqSplitter.remaining();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (SeqSplitter) obj2));
    }
}
