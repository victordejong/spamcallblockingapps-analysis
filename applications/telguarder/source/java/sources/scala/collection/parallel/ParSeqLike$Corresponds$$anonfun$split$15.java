package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Corresponds$$anonfun$split$15.class */
public final class ParSeqLike$Corresponds$$anonfun$split$15 extends AbstractFunction1<Tuple2<SeqSplitter<T>, SeqSplitter<S>>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$Corresponds$$anonfun$split$15(ParSeqLike<T, Repr, Sequential>.Corresponds<S> corresponds) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<SeqSplitter<T>, SeqSplitter<S>> tuple2) {
        return tuple2 != 0;
    }
}
