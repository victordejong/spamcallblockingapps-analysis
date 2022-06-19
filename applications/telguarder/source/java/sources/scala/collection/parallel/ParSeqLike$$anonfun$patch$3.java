package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$patch$3.class */
public final class ParSeqLike$$anonfun$patch$3 extends AbstractFunction1<Combiner<U, That>, That> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$$anonfun$patch$3(ParSeqLike<T, Repr, Sequential> parSeqLike) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Combiner<U, Object>) obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [That, java.lang.Object] */
    public final That apply(Combiner<U, That> combiner) {
        return combiner.resultWithTaskSupport();
    }
}
