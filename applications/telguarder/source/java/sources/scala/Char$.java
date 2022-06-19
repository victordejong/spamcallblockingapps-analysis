package scala;
/* loaded from: classes3-dex2jar.jar:scala/Char$.class */
public final class Char$ implements AnyValCompanion {
    public static final Char$ MODULE$ = null;
    private final char MaxValue;
    private final char MinValue;

    static {
        new Char$();
    }

    private Char$() {
        MODULE$ = this;
    }

    public final char MaxValue() {
        return (char) 65535;
    }

    public final char MinValue() {
        return (char) 0;
    }

    public Character box(char c) {
        return Character.valueOf(c);
    }

    public double char2double(char c) {
        return c;
    }

    public float char2float(char c) {
        return c;
    }

    public int char2int(char c) {
        return c;
    }

    public long char2long(char c) {
        return c;
    }

    public String toString() {
        return "object scala.Char";
    }

    public char unbox(Object obj) {
        return ((Character) obj).charValue();
    }
}
