package scala.collection.immutable;

import scala.collection.immutable.NumericRange;
import scala.math.BigDecimal;
import scala.math.Numeric$BigDecimalAsIfIntegral$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$BigDecimal$.class */
public class Range$BigDecimal$ {
    public static final Range$BigDecimal$ MODULE$ = null;
    private final Numeric$BigDecimalAsIfIntegral$ bigDecAsIntegral = Numeric$BigDecimalAsIfIntegral$.MODULE$;

    static {
        new Range$BigDecimal$();
    }

    public Range$BigDecimal$() {
        MODULE$ = this;
    }

    public NumericRange.Exclusive<BigDecimal> apply(BigDecimal bigDecimal, BigDecimal bigDecimal2, BigDecimal bigDecimal3) {
        return NumericRange$.MODULE$.apply(bigDecimal, bigDecimal2, bigDecimal3, bigDecAsIntegral());
    }

    public Numeric$BigDecimalAsIfIntegral$ bigDecAsIntegral() {
        return this.bigDecAsIntegral;
    }

    public NumericRange.Inclusive<BigDecimal> inclusive(BigDecimal bigDecimal, BigDecimal bigDecimal2, BigDecimal bigDecimal3) {
        return NumericRange$.MODULE$.inclusive(bigDecimal, bigDecimal2, bigDecimal3, bigDecAsIntegral());
    }
}
