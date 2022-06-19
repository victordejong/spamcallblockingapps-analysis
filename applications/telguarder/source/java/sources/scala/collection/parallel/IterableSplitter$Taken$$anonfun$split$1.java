package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Taken$$anonfun$split$1.class */
public final class IterableSplitter$Taken$$anonfun$split$1 extends AbstractFunction2<IterableSplitter<T>, Object, IterableSplitter<T>> implements Serializable {
    public static final long serialVersionUID = 0;

    public IterableSplitter$Taken$$anonfun$split$1(IterableSplitter<T>.Taken taken) {
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((IterableSplitter) obj, BoxesRunTime.unboxToInt(obj2));
    }

    public final IterableSplitter<T> apply(IterableSplitter<T> iterableSplitter, int i) {
        return iterableSplitter.take(i);
    }
}
