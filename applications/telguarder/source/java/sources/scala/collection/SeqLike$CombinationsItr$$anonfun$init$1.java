package scala.collection;

import scala.Serializable;
import scala.collection.SeqLike;
import scala.runtime.AbstractFunction1$mcVI$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr$$anonfun$init$1.class */
public final class SeqLike$CombinationsItr$$anonfun$init$1 extends AbstractFunction1$mcVI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final int[] cs$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqLike$CombinationsItr$$anonfun$init$1(SeqLike.CombinationsItr combinationsItr, SeqLike<A, Repr>.CombinationsItr combinationsItr2) {
        this.cs$1 = combinationsItr2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToInt(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVI$sp
    public final void apply(int i) {
        apply$mcVI$sp(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public void apply$mcVI$sp(int i) {
        int[] iArr = this.cs$1;
        iArr[i] = iArr[i] + 1;
    }
}
