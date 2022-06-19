package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Drop$$anonfun$13.class */
public final class ParIterableLike$Drop$$anonfun$13 extends AbstractFunction2<Object, IterableSplitter<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$Drop$$anonfun$13(ParIterableLike<T, Repr, Sequential>.Drop<U, This> drop) {
    }

    public final int apply(int i, IterableSplitter<T> iterableSplitter) {
        return i + iterableSplitter.remaining();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (IterableSplitter) obj2));
    }
}
