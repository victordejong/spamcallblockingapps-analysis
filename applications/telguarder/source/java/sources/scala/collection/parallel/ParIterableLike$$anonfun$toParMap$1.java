package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$toParMap$1.class */
public final class ParIterableLike$$anonfun$toParMap$1 extends AbstractFunction1<Combiner<Tuple2<K, V>, That>, That> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$toParMap$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Combiner<Tuple2<K, V>, Object>) obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [That, java.lang.Object] */
    public final That apply(Combiner<Tuple2<K, V>, That> combiner) {
        return combiner.resultWithTaskSupport();
    }
}
