package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileIntRef.class */
public class VolatileIntRef implements Serializable {
    private static final long serialVersionUID = 1488197132022872888L;
    public volatile int elem;

    public VolatileIntRef(int i) {
        this.elem = i;
    }

    public static VolatileIntRef create(int i) {
        return new VolatileIntRef(i);
    }

    public static VolatileIntRef zero() {
        return new VolatileIntRef(0);
    }

    public String toString() {
        return Integer.toString(this.elem);
    }
}
