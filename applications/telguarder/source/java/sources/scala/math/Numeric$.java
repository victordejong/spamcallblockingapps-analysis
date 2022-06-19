package scala.math;

import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$.class */
public final class Numeric$ implements Serializable {
    public static final Numeric$ MODULE$ = null;

    static {
        new Numeric$();
    }

    private Numeric$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }
}
