package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/IntRef.class */
public class IntRef implements Serializable {
    private static final long serialVersionUID = 1488197132022872888L;
    public int elem;

    public IntRef(int i) {
        this.elem = i;
    }

    public static IntRef create(int i) {
        return new IntRef(i);
    }

    public static IntRef zero() {
        return new IntRef(0);
    }

    public String toString() {
        return Integer.toString(this.elem);
    }
}
