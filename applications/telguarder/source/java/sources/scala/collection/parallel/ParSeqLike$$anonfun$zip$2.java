package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$zip$2.class */
public final class ParSeqLike$$anonfun$zip$2 extends AbstractFunction1<Combiner<Tuple2<U, S>, That>, That> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$$anonfun$zip$2(ParSeqLike<T, Repr, Sequential> parSeqLike) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Combiner<Tuple2<U, S>, Object>) obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [That, java.lang.Object] */
    public final That apply(Combiner<Tuple2<U, S>, That> combiner) {
        return combiner.resultWithTaskSupport();
    }
}
