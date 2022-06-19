package scala;
/* loaded from: classes3-dex2jar.jar:scala/Double$.class */
public final class Double$ implements AnyValCompanion {
    public static final Double$ MODULE$ = null;
    private final double MaxValue;
    private final double MinPositiveValue;
    private final double MinValue = -1.7976931348623157E308d;
    private final double NaN;
    private final double NegativeInfinity;
    private final double PositiveInfinity;

    static {
        new Double$();
    }

    private Double$() {
        MODULE$ = this;
    }

    public final double MaxValue() {
        return Double.MAX_VALUE;
    }

    public final double MinPositiveValue() {
        return Double.MIN_VALUE;
    }

    public final double MinValue() {
        return this.MinValue;
    }

    public final double NaN() {
        return Double.NaN;
    }

    public final double NegativeInfinity() {
        return Double.NEGATIVE_INFINITY;
    }

    public final double PositiveInfinity() {
        return Double.POSITIVE_INFINITY;
    }

    public Double box(double d) {
        return Double.valueOf(d);
    }

    public String toString() {
        return "object scala.Double";
    }

    public double unbox(Object obj) {
        return ((Double) obj).doubleValue();
    }
}
