package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ObjectRef.class */
public class ObjectRef<T> implements Serializable {
    private static final long serialVersionUID = -9055728157600312291L;
    public T elem;

    public ObjectRef(T t) {
        this.elem = t;
    }

    public static <U> ObjectRef<U> create(U u) {
        return new ObjectRef<>(u);
    }

    public static ObjectRef<Object> zero() {
        return new ObjectRef<>(null);
    }

    public String toString() {
        return String.valueOf(this.elem);
    }
}
