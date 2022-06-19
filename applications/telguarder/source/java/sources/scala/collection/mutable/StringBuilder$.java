package scala.collection.mutable;

import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/StringBuilder$.class */
public final class StringBuilder$ implements Serializable {
    public static final StringBuilder$ MODULE$ = null;

    static {
        new StringBuilder$();
    }

    private StringBuilder$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public StringBuilder newBuilder() {
        return new StringBuilder();
    }
}
