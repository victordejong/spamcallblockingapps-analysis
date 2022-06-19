package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/BooleanRef.class */
public class BooleanRef implements Serializable {
    private static final long serialVersionUID = -5730524563015615974L;
    public boolean elem;

    public BooleanRef(boolean z) {
        this.elem = z;
    }

    public static BooleanRef create(boolean z) {
        return new BooleanRef(z);
    }

    public static BooleanRef zero() {
        return new BooleanRef(false);
    }

    public String toString() {
        return String.valueOf(this.elem);
    }
}
