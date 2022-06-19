package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/VolatileObjectRef.class */
public class VolatileObjectRef<T> implements Serializable {
    private static final long serialVersionUID = -9055728157600312291L;
    public volatile T elem;

    public VolatileObjectRef(T t) {
        this.elem = t;
    }

    public static <U> VolatileObjectRef<U> create(U u) {
        return new VolatileObjectRef<>(u);
    }

    public static VolatileObjectRef<Object> zero() {
        return new VolatileObjectRef<>(null);
    }

    public String toString() {
        return String.valueOf(this.elem);
    }
}
