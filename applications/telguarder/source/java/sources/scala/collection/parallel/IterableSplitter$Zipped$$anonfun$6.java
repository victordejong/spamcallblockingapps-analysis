package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Zipped$$anonfun$6.class */
public final class IterableSplitter$Zipped$$anonfun$6 extends AbstractFunction1<IterableSplitter<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public IterableSplitter$Zipped$$anonfun$6(IterableSplitter<T>.Zipped<S> zipped) {
    }

    public final int apply(IterableSplitter<T> iterableSplitter) {
        return iterableSplitter.remaining();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply((IterableSplitter) obj));
    }
}
