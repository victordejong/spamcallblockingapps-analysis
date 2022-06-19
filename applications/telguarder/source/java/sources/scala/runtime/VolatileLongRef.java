package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileLongRef.class */
public class VolatileLongRef implements Serializable {
    private static final long serialVersionUID = -3567869820105829499L;
    public volatile long elem;

    public VolatileLongRef(long j) {
        this.elem = j;
    }

    public static VolatileLongRef create(long j) {
        return new VolatileLongRef(j);
    }

    public static VolatileLongRef zero() {
        return new VolatileLongRef(0L);
    }

    public String toString() {
        return Long.toString(this.elem);
    }
}
