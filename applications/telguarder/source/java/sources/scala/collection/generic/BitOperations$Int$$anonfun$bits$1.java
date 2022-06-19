package scala.collection.generic;

import scala.Serializable;
import scala.collection.generic.BitOperations;
import scala.runtime.AbstractFunction1$mcZI$sp;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Int$$anonfun$bits$1.class */
public final class BitOperations$Int$$anonfun$bits$1 extends AbstractFunction1$mcZI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final int num$2;

    public BitOperations$Int$$anonfun$bits$1(BitOperations.Int r4, int i) {
        this.num$2 = i;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.Function1$mcZI$sp
    public final boolean apply(int i) {
        return apply$mcZI$sp(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean z = true;
        if (((this.num$2 >>> i) & 1) == 0) {
            z = false;
        }
        return z;
    }
}
