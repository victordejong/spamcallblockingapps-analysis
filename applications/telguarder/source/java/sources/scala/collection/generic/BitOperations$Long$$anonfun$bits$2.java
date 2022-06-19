package scala.collection.generic;

import scala.Serializable;
import scala.collection.generic.BitOperations;
import scala.runtime.AbstractFunction1$mcZJ$sp;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Long$$anonfun$bits$2.class */
public final class BitOperations$Long$$anonfun$bits$2 extends AbstractFunction1$mcZJ$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final long num$1;

    public BitOperations$Long$$anonfun$bits$2(BitOperations.Long r5, long j) {
        this.num$1 = j;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToLong(obj)));
    }

    @Override // scala.Function1$mcZJ$sp
    public final boolean apply(long j) {
        return apply$mcZJ$sp(j);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        return ((this.num$1 >>> ((int) j)) & 1) != 0;
    }
}
