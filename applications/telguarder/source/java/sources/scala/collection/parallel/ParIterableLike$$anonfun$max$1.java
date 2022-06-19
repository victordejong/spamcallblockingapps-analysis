package scala.collection.parallel;

import scala.Option;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$max$1.class */
public final class ParIterableLike$$anonfun$max$1 extends AbstractFunction1<Option<U>, U> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$max$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Option<Object>) obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [U, java.lang.Object] */
    public final U apply(Option<U> option) {
        return option.get();
    }
}
