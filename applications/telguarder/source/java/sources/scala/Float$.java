package scala;
/* loaded from: classes3-dex2jar.jar:scala/Float$.class */
public final class Float$ implements AnyValCompanion {
    public static final Float$ MODULE$ = null;
    private final float MaxValue;
    private final float MinPositiveValue;
    private final float MinValue = -3.4028235E38f;
    private final float NaN;
    private final float NegativeInfinity;
    private final float PositiveInfinity;

    static {
        new Float$();
    }

    private Float$() {
        MODULE$ = this;
    }

    public final float MaxValue() {
        return Float.MAX_VALUE;
    }

    public final float MinPositiveValue() {
        return Float.MIN_VALUE;
    }

    public final float MinValue() {
        return this.MinValue;
    }

    public final float NaN() {
        return Float.NaN;
    }

    public final float NegativeInfinity() {
        return Float.NEGATIVE_INFINITY;
    }

    public final float PositiveInfinity() {
        return Float.POSITIVE_INFINITY;
    }

    public Float box(float f) {
        return Float.valueOf(f);
    }

    public double float2double(float f) {
        return f;
    }

    public String toString() {
        return "object scala.Float";
    }

    public float unbox(Object obj) {
        return ((Float) obj).floatValue();
    }
}
