package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/BoxedUnit.class */
public final class BoxedUnit implements Serializable {
    private static final long serialVersionUID = 8405543498931817370L;
    public static final BoxedUnit UNIT = new BoxedUnit();
    public static final Class<Void> TYPE = Void.TYPE;

    private BoxedUnit() {
    }

    private Object readResolve() {
        return UNIT;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "()";
    }
}
