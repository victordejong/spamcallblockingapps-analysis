package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$7.class */
public final class ParSeqLike$LastIndexWhere$$anonfun$split$7 extends AbstractFunction2<Object, SeqSplitter<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$LastIndexWhere$$anonfun$split$7(ParSeqLike<T, Repr, Sequential>.LastIndexWhere lastIndexWhere) {
    }

    public final int apply(int i, SeqSplitter<T> seqSplitter) {
        return i + seqSplitter.remaining();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (SeqSplitter) obj2));
    }
}
