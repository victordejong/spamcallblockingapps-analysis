package scala.math;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/math/BigDecimal$$anonfun$isValidByte$1.class */
public final class BigDecimal$$anonfun$isValidByte$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ BigDecimal $outer;

    public BigDecimal$$anonfun$isValidByte$1(BigDecimal bigDecimal) {
        Objects.requireNonNull(bigDecimal);
        this.$outer = bigDecimal;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.toByteExact();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.toByteExact();
    }
}
