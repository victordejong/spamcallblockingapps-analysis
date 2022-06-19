package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$flatMap$2.class */
public final class ParIterableLike$$anonfun$flatMap$2 extends AbstractFunction1<Combiner<S, That>, That> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$flatMap$2(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Combiner<S, Object>) obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [That, java.lang.Object] */
    public final That apply(Combiner<S, That> combiner) {
        return combiner.resultWithTaskSupport();
    }
}
