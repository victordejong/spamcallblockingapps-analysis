package scala.collection.script;

import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Reset$.class */
public final class Reset$ implements Serializable {
    public static final Reset$ MODULE$ = null;

    static {
        new Reset$();
    }

    private Reset$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Reset<A> apply() {
        return new Reset<>();
    }

    public final String toString() {
        return "Reset";
    }

    public <A> boolean unapply(Reset<A> reset) {
        return reset != null;
    }
}
