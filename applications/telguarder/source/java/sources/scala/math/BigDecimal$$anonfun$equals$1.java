package scala.math;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/BigDecimal$$anonfun$equals$1.class */
public final class BigDecimal$$anonfun$equals$1 extends AbstractFunction1<BigInt, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    public final BigInt x3$1;

    public BigDecimal$$anonfun$equals$1(BigDecimal bigDecimal, BigInt bigInt) {
        this.x3$1 = bigInt;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((BigInt) obj));
    }

    public final boolean apply(BigInt bigInt) {
        return this.x3$1.equals(bigInt);
    }
}
