package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/LongRef.class */
public class LongRef implements Serializable {
    private static final long serialVersionUID = -3567869820105829499L;
    public long elem;

    public LongRef(long j) {
        this.elem = j;
    }

    public static LongRef create(long j) {
        return new LongRef(j);
    }

    public static LongRef zero() {
        return new LongRef(0L);
    }

    public String toString() {
        return Long.toString(this.elem);
    }
}
