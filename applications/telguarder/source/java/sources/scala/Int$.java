package scala;
/* loaded from: classes3-dex2jar.jar:scala/Int$.class */
public final class Int$ implements AnyValCompanion {
    public static final Int$ MODULE$ = null;
    private final int MaxValue;
    private final int MinValue;

    static {
        new Int$();
    }

    private Int$() {
        MODULE$ = this;
    }

    public final int MaxValue() {
        return Integer.MAX_VALUE;
    }

    public final int MinValue() {
        return Integer.MIN_VALUE;
    }

    public Integer box(int i) {
        return Integer.valueOf(i);
    }

    public double int2double(int i) {
        return i;
    }

    public float int2float(int i) {
        return i;
    }

    public long int2long(int i) {
        return i;
    }

    public String toString() {
        return "object scala.Int";
    }

    public int unbox(Object obj) {
        return ((Integer) obj).intValue();
    }
}
