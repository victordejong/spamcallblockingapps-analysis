package scala.math;

import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/math/Fractional$.class */
public final class Fractional$ implements Serializable {
    public static final Fractional$ MODULE$ = null;

    static {
        new Fractional$();
    }

    private Fractional$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }
}
