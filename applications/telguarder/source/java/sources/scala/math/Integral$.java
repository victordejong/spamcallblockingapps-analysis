package scala.math;

import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/math/Integral$.class */
public final class Integral$ implements Serializable {
    public static final Integral$ MODULE$ = null;

    static {
        new Integral$();
    }

    private Integral$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }
}
