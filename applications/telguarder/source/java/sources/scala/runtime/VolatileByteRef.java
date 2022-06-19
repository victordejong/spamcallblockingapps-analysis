package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileByteRef.class */
public class VolatileByteRef implements Serializable {
    private static final long serialVersionUID = -100666928446877072L;
    public volatile byte elem;

    public VolatileByteRef(byte b) {
        this.elem = b;
    }

    public static VolatileByteRef create(byte b) {
        return new VolatileByteRef(b);
    }

    public static VolatileByteRef zero() {
        return new VolatileByteRef((byte) 0);
    }

    public String toString() {
        return Byte.toString(this.elem);
    }
}
