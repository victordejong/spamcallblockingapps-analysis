package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction2$mcIII$sp;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr$$anonfun$1.class */
public final class SeqLike$CombinationsItr$$anonfun$1 extends AbstractFunction2$mcIII$sp implements Serializable {
    public static final long serialVersionUID = 0;

    public SeqLike$CombinationsItr$$anonfun$1(SeqLike<A, Repr>.CombinationsItr combinationsItr) {
    }

    @Override // scala.Function2$mcIII$sp
    public final int apply(int i, int i2) {
        return i + i2;
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2)));
    }

    @Override // scala.runtime.AbstractFunction2, scala.Function2
    public int apply$mcIII$sp(int i, int i2) {
        return i + i2;
    }
}
