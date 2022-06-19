package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileFloatRef.class */
public class VolatileFloatRef implements Serializable {
    private static final long serialVersionUID = -5793980990371366933L;
    public volatile float elem;

    public VolatileFloatRef(float f) {
        this.elem = f;
    }

    public static VolatileFloatRef create(float f) {
        return new VolatileFloatRef(f);
    }

    public static VolatileFloatRef zero() {
        return new VolatileFloatRef(0.0f);
    }

    public String toString() {
        return Float.toString(this.elem);
    }
}
