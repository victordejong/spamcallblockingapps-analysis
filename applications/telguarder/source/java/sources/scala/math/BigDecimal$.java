package scala.math;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import scala.Serializable;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/math/BigDecimal$.class */
public final class BigDecimal$ implements Serializable {
    public static final BigDecimal$ MODULE$ = null;
    private volatile boolean bitmap$0;
    private BigDecimal[] cache;
    private final double deci2binary;
    private final int hashCodeNotComputed;
    private final int maximumHashScale;
    private final int minCached = -512;
    private final int maxCached = 512;
    private final MathContext defaultMathContext = MathContext.DECIMAL128;

    static {
        new BigDecimal$();
    }

    private BigDecimal$() {
        MODULE$ = this;
    }

    private BigDecimal[] cache() {
        return this.bitmap$0 ? this.cache : cache$lzycompute();
    }

    private BigDecimal[] cache$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.cache = new BigDecimal[(maxCached() - minCached()) + 1];
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.cache;
    }

    private final double deci2binary() {
        return 3.3219280948873626d;
    }

    private final int hashCodeNotComputed() {
        return 1565550863;
    }

    private int maxCached() {
        return this.maxCached;
    }

    private final int maximumHashScale() {
        return 4934;
    }

    private int minCached() {
        return this.minCached;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public BigDecimal apply(double d) {
        return decimal(d, defaultMathContext());
    }

    public BigDecimal apply(double d, MathContext mathContext) {
        return decimal(d, mathContext);
    }

    public BigDecimal apply(float f) {
        return apply(f);
    }

    public BigDecimal apply(float f, MathContext mathContext) {
        return apply(f, mathContext);
    }

    public BigDecimal apply(int i) {
        return apply(i, defaultMathContext());
    }

    public BigDecimal apply(int i, MathContext mathContext) {
        BigDecimal bigDecimal;
        MathContext defaultMathContext = defaultMathContext();
        if (mathContext != null ? mathContext.equals(defaultMathContext) : defaultMathContext == null) {
            if (minCached() <= i && i <= maxCached()) {
                int minCached = i - minCached();
                BigDecimal bigDecimal2 = cache()[minCached];
                bigDecimal = bigDecimal2;
                if (bigDecimal2 == null) {
                    bigDecimal = new BigDecimal(BigDecimal.valueOf(i), mathContext);
                    cache()[minCached] = bigDecimal;
                }
                return bigDecimal;
            }
        }
        bigDecimal = apply(i, mathContext);
        return bigDecimal;
    }

    public BigDecimal apply(long j) {
        return (((long) minCached()) > j || j > ((long) maxCached())) ? new BigDecimal(BigDecimal.valueOf(j), defaultMathContext()) : apply((int) j);
    }

    public BigDecimal apply(long j, int i) {
        return apply(BigInt$.MODULE$.apply(j), i);
    }

    public BigDecimal apply(long j, int i, MathContext mathContext) {
        return apply(BigInt$.MODULE$.apply(j), i, mathContext);
    }

    public BigDecimal apply(long j, MathContext mathContext) {
        return new BigDecimal(new BigDecimal(j, mathContext), mathContext);
    }

    public BigDecimal apply(String str) {
        return exact(str);
    }

    public BigDecimal apply(String str, MathContext mathContext) {
        return new BigDecimal(new BigDecimal(str, mathContext), mathContext);
    }

    public BigDecimal apply(BigDecimal bigDecimal) {
        return apply(bigDecimal, defaultMathContext());
    }

    public BigDecimal apply(BigDecimal bigDecimal, MathContext mathContext) {
        return new BigDecimal(bigDecimal, mathContext);
    }

    public BigDecimal apply(BigInt bigInt) {
        return exact(bigInt);
    }

    public BigDecimal apply(BigInt bigInt, int i) {
        return exact(new BigDecimal(bigInt.bigInteger(), i));
    }

    public BigDecimal apply(BigInt bigInt, int i, MathContext mathContext) {
        return new BigDecimal(new BigDecimal(bigInt.bigInteger(), i, mathContext), mathContext);
    }

    public BigDecimal apply(BigInt bigInt, MathContext mathContext) {
        return new BigDecimal(new BigDecimal(bigInt.bigInteger(), mathContext), mathContext);
    }

    public BigDecimal apply(char[] cArr) {
        return exact(cArr);
    }

    public BigDecimal apply(char[] cArr, MathContext mathContext) {
        return new BigDecimal(new BigDecimal(cArr, mathContext), mathContext);
    }

    public BigDecimal binary(double d) {
        return binary(d, defaultMathContext());
    }

    public BigDecimal binary(double d, MathContext mathContext) {
        return new BigDecimal(new BigDecimal(d, mathContext), mathContext);
    }

    public BigDecimal decimal(double d) {
        return decimal(d, defaultMathContext());
    }

    public BigDecimal decimal(double d, MathContext mathContext) {
        return new BigDecimal(new BigDecimal(Double.toString(d), mathContext), mathContext);
    }

    public BigDecimal decimal(float f) {
        return decimal(f, defaultMathContext());
    }

    public BigDecimal decimal(float f, MathContext mathContext) {
        return new BigDecimal(new BigDecimal(Float.toString(f), mathContext), mathContext);
    }

    public BigDecimal decimal(long j) {
        return apply(j);
    }

    public BigDecimal decimal(long j, MathContext mathContext) {
        return apply(j, mathContext);
    }

    public BigDecimal decimal(BigDecimal bigDecimal, MathContext mathContext) {
        return new BigDecimal(bigDecimal.round(mathContext), mathContext);
    }

    public MathContext defaultMathContext() {
        return this.defaultMathContext;
    }

    public BigDecimal double2bigDecimal(double d) {
        return decimal(d);
    }

    public BigDecimal exact(double d) {
        return exact(new BigDecimal(d));
    }

    public BigDecimal exact(long j) {
        return apply(j);
    }

    public BigDecimal exact(String str) {
        return exact(new BigDecimal(str));
    }

    public BigDecimal exact(BigDecimal bigDecimal) {
        return new BigDecimal(bigDecimal, bigDecimal.precision() <= defaultMathContext().getPrecision() ? defaultMathContext() : new MathContext(bigDecimal.precision(), RoundingMode.HALF_EVEN));
    }

    public BigDecimal exact(BigInt bigInt) {
        return exact(new BigDecimal(bigInt.bigInteger()));
    }

    public BigDecimal exact(char[] cArr) {
        return exact(new BigDecimal(cArr));
    }

    public BigDecimal int2bigDecimal(int i) {
        return apply(i);
    }

    public BigDecimal javaBigDecimal2bigDecimal(BigDecimal bigDecimal) {
        return apply(bigDecimal);
    }

    public BigDecimal long2bigDecimal(long j) {
        return apply(j);
    }

    public BigDecimal valueOf(double d) {
        return apply(BigDecimal.valueOf(d));
    }

    public BigDecimal valueOf(double d, MathContext mathContext) {
        return apply(BigDecimal.valueOf(d), mathContext);
    }

    public BigDecimal valueOf(float f) {
        return valueOf(f);
    }

    public BigDecimal valueOf(float f, MathContext mathContext) {
        return valueOf(f, mathContext);
    }

    public BigDecimal valueOf(long j) {
        return apply(j);
    }
}
