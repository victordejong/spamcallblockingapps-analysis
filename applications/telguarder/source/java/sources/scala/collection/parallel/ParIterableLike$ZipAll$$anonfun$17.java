package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$ZipAll$$anonfun$17.class */
public final class ParIterableLike$ZipAll$$anonfun$17 extends AbstractFunction1<IterableSplitter<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$ZipAll$$anonfun$17(ParIterableLike<T, Repr, Sequential>.ZipAll<U, S, That> zipAll) {
    }

    public final int apply(IterableSplitter<T> iterableSplitter) {
        return iterableSplitter.remaining();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply((IterableSplitter) obj));
    }
}
