package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Zip$$anonfun$16.class */
public final class ParIterableLike$Zip$$anonfun$16 extends AbstractFunction1<IterableSplitter<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$Zip$$anonfun$16(ParIterableLike<T, Repr, Sequential>.Zip<U, S, That> zip) {
    }

    public final int apply(IterableSplitter<T> iterableSplitter) {
        return iterableSplitter.remaining();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply((IterableSplitter) obj));
    }
}
