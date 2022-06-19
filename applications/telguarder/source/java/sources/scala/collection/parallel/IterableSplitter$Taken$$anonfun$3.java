package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Taken$$anonfun$3.class */
public final class IterableSplitter$Taken$$anonfun$3 extends AbstractFunction2<Object, PI, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public IterableSplitter$Taken$$anonfun$3(IterableSplitter<T>.Taken taken) {
    }

    public final int apply(int i, IterableSplitter iterableSplitter) {
        return i + iterableSplitter.remaining();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (IterableSplitter) obj2));
    }
}
