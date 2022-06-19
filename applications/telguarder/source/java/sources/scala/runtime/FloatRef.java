package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/FloatRef.class */
public class FloatRef implements Serializable {
    private static final long serialVersionUID = -5793980990371366933L;
    public float elem;

    public FloatRef(float f) {
        this.elem = f;
    }

    public static FloatRef create(float f) {
        return new FloatRef(f);
    }

    public static FloatRef zero() {
        return new FloatRef(0.0f);
    }

    public String toString() {
        return Float.toString(this.elem);
    }
}
