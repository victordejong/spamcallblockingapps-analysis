package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileBooleanRef.class */
public class VolatileBooleanRef implements Serializable {
    private static final long serialVersionUID = -5730524563015615974L;
    public volatile boolean elem;

    public VolatileBooleanRef(boolean z) {
        this.elem = z;
    }

    public static VolatileBooleanRef create(boolean z) {
        return new VolatileBooleanRef(z);
    }

    public static VolatileBooleanRef zero() {
        return new VolatileBooleanRef(false);
    }

    public String toString() {
        return String.valueOf(this.elem);
    }
}
