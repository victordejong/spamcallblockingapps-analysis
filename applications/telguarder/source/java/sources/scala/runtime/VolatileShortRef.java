package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileShortRef.class */
public class VolatileShortRef implements Serializable {
    private static final long serialVersionUID = 4218441291229072313L;
    public volatile short elem;

    public VolatileShortRef(short s) {
        this.elem = s;
    }

    public static VolatileShortRef create(short s) {
        return new VolatileShortRef(s);
    }

    public static VolatileShortRef zero() {
        return new VolatileShortRef((short) 0);
    }

    public String toString() {
        return Short.toString(this.elem);
    }
}
