package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/DoubleRef.class */
public class DoubleRef implements Serializable {
    private static final long serialVersionUID = 8304402127373655534L;
    public double elem;

    public DoubleRef(double d) {
        this.elem = d;
    }

    public static DoubleRef create(double d) {
        return new DoubleRef(d);
    }

    public static DoubleRef zero() {
        return new DoubleRef(0.0d);
    }

    public String toString() {
        return Double.toString(this.elem);
    }
}
