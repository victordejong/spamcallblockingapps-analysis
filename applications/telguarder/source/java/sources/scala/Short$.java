package scala;
/* loaded from: classes3-dex2jar.jar:scala/Short$.class */
public final class Short$ implements AnyValCompanion {
    public static final Short$ MODULE$ = null;
    private final short MaxValue;
    private final short MinValue;

    static {
        new Short$();
    }

    private Short$() {
        MODULE$ = this;
    }

    public final short MaxValue() {
        return Short.MAX_VALUE;
    }

    public final short MinValue() {
        return Short.MIN_VALUE;
    }

    public Short box(short s) {
        return Short.valueOf(s);
    }

    public double short2double(short s) {
        return s;
    }

    public float short2float(short s) {
        return s;
    }

    public int short2int(short s) {
        return s;
    }

    public long short2long(short s) {
        return s;
    }

    public String toString() {
        return "object scala.Short";
    }

    public short unbox(Object obj) {
        return ((Short) obj).shortValue();
    }
}
