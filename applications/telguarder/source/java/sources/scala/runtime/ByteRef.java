package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ByteRef.class */
public class ByteRef implements Serializable {
    private static final long serialVersionUID = -100666928446877072L;
    public byte elem;

    public ByteRef(byte b) {
        this.elem = b;
    }

    public static ByteRef create(byte b) {
        return new ByteRef(b);
    }

    public static ByteRef zero() {
        return new ByteRef((byte) 0);
    }

    public String toString() {
        return Byte.toString(this.elem);
    }
}
