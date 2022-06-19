package scala;
/* loaded from: classes3-dex2jar.jar:scala/Byte$.class */
public final class Byte$ implements AnyValCompanion {
    public static final Byte$ MODULE$ = null;
    private final byte MaxValue;
    private final byte MinValue;

    static {
        new Byte$();
    }

    private Byte$() {
        MODULE$ = this;
    }

    public final byte MaxValue() {
        return Byte.MAX_VALUE;
    }

    public final byte MinValue() {
        return Byte.MIN_VALUE;
    }

    public Byte box(byte b) {
        return Byte.valueOf(b);
    }

    public double byte2double(byte b) {
        return b;
    }

    public float byte2float(byte b) {
        return b;
    }

    public int byte2int(byte b) {
        return b;
    }

    public long byte2long(byte b) {
        return b;
    }

    public short byte2short(byte b) {
        return b;
    }

    public String toString() {
        return "object scala.Byte";
    }

    public byte unbox(Object obj) {
        return ((Byte) obj).byteValue();
    }
}
