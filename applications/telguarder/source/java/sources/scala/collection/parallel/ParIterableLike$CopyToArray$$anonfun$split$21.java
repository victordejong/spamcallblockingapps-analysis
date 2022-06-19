package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$21.class */
public final class ParIterableLike$CopyToArray$$anonfun$split$21 extends AbstractFunction2<Object, IterableSplitter<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$CopyToArray$$anonfun$split$21(ParIterableLike<T, Repr, Sequential>.CopyToArray<U, This> copyToArray) {
    }

    public final int apply(int i, IterableSplitter<T> iterableSplitter) {
        return i + iterableSplitter.remaining();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (IterableSplitter) obj2));
    }
}
