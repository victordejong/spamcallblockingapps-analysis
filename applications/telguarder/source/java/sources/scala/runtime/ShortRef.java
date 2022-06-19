package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ShortRef.class */
public class ShortRef implements Serializable {
    private static final long serialVersionUID = 4218441291229072313L;
    public short elem;

    public ShortRef(short s) {
        this.elem = s;
    }

    public static ShortRef create(short s) {
        return new ShortRef(s);
    }

    public static ShortRef zero() {
        return new ShortRef((short) 0);
    }

    public String toString() {
        return Short.toString(this.elem);
    }
}
