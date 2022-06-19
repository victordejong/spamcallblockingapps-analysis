package scala.math;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.NumericRange;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/math/BigDecimal$$anonfun$until$1.class */
public final class BigDecimal$$anonfun$until$1 extends AbstractFunction1<BigDecimal, NumericRange.Exclusive<BigDecimal>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ BigDecimal $outer;
    private final BigDecimal end$1;

    public BigDecimal$$anonfun$until$1(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        Objects.requireNonNull(bigDecimal);
        this.$outer = bigDecimal;
        this.end$1 = bigDecimal2;
    }

    public final NumericRange.Exclusive<BigDecimal> apply(BigDecimal bigDecimal) {
        return this.$outer.until(this.end$1, bigDecimal);
    }
}
