package scala.math;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.NumericRange;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/math/BigDecimal$$anonfun$to$1.class */
public final class BigDecimal$$anonfun$to$1 extends AbstractFunction1<BigDecimal, NumericRange.Inclusive<BigDecimal>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ BigDecimal $outer;
    private final BigDecimal end$2;

    public BigDecimal$$anonfun$to$1(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        Objects.requireNonNull(bigDecimal);
        this.$outer = bigDecimal;
        this.end$2 = bigDecimal2;
    }

    public final NumericRange.Inclusive<BigDecimal> apply(BigDecimal bigDecimal) {
        return this.$outer.m54to(this.end$2, bigDecimal);
    }
}
