package scala.collection.immutable;

import scala.math.BigDecimal;
import scala.math.BigDecimal$;
import scala.math.Numeric$BigDecimalAsIfIntegral$;
import scala.math.Numeric$DoubleAsIfIntegral$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$Double$.class */
public class Range$Double$ {
    public static final Range$Double$ MODULE$ = null;
    private final Numeric$BigDecimalAsIfIntegral$ bigDecAsIntegral = Numeric$BigDecimalAsIfIntegral$.MODULE$;
    private final Numeric$DoubleAsIfIntegral$ doubleAsIntegral = Numeric$DoubleAsIfIntegral$.MODULE$;

    static {
        new Range$Double$();
    }

    public Range$Double$() {
        MODULE$ = this;
    }

    public NumericRange<Object> apply(double d, double d2, double d3) {
        return Range$BigDecimal$.MODULE$.apply(toBD(d), toBD(d2), toBD(d3)).mapRange(new Range$Double$$anonfun$apply$1(), doubleAsIntegral());
    }

    public Numeric$BigDecimalAsIfIntegral$ bigDecAsIntegral() {
        return this.bigDecAsIntegral;
    }

    public Numeric$DoubleAsIfIntegral$ doubleAsIntegral() {
        return this.doubleAsIntegral;
    }

    public NumericRange<Object> inclusive(double d, double d2, double d3) {
        return Range$BigDecimal$.MODULE$.inclusive(toBD(d), toBD(d2), toBD(d3)).mapRange(new Range$Double$$anonfun$inclusive$1(), doubleAsIntegral());
    }

    public BigDecimal toBD(double d) {
        return BigDecimal$.MODULE$.valueOf(d);
    }
}
