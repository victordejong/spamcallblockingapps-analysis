package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileDoubleRef.class */
public class VolatileDoubleRef implements Serializable {
    private static final long serialVersionUID = 8304402127373655534L;
    public volatile double elem;

    public VolatileDoubleRef(double d) {
        this.elem = d;
    }

    public static VolatileDoubleRef create(double d) {
        return new VolatileDoubleRef(d);
    }

    public static VolatileDoubleRef zero() {
        return new VolatileDoubleRef(0.0d);
    }

    public String toString() {
        return Double.toString(this.elem);
    }
}
