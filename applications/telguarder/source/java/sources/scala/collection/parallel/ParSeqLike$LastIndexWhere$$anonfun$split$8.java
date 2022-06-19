package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$LastIndexWhere$$anonfun$split$8.class */
public final class ParSeqLike$LastIndexWhere$$anonfun$split$8 extends AbstractFunction1<Tuple2<SeqSplitter<T>, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$LastIndexWhere$$anonfun$split$8(ParSeqLike<T, Repr, Sequential>.LastIndexWhere lastIndexWhere) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<SeqSplitter<T>, Object> tuple2) {
        return tuple2 != 0;
    }
}
