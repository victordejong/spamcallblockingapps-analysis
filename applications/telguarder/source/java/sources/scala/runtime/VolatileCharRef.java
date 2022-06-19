package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileCharRef.class */
public class VolatileCharRef implements Serializable {
    private static final long serialVersionUID = 6537214938268005702L;
    public volatile char elem;

    public VolatileCharRef(char c) {
        this.elem = c;
    }

    public static VolatileCharRef create(char c) {
        return new VolatileCharRef(c);
    }

    public static VolatileCharRef zero() {
        return new VolatileCharRef((char) 0);
    }

    public String toString() {
        return Character.toString(this.elem);
    }
}
