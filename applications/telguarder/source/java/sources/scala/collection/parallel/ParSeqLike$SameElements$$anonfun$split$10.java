package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$SameElements$$anonfun$split$10.class */
public final class ParSeqLike$SameElements$$anonfun$split$10 extends AbstractFunction1<Tuple2<SeqSplitter<T>, SeqSplitter<U>>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$SameElements$$anonfun$split$10(ParSeqLike<T, Repr, Sequential>.SameElements<U> sameElements) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<SeqSplitter<T>, SeqSplitter<U>> tuple2) {
        return tuple2 != 0;
    }
}
