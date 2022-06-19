package scala.util;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
/* loaded from: classes3-dex2jar.jar:scala/util/Right$.class */
public final class Right$ implements Serializable {
    public static final Right$ MODULE$ = null;

    static {
        new Right$();
    }

    private Right$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> Right<A, B> apply(B b) {
        return new Right<>(b);
    }

    public final String toString() {
        return "Right";
    }

    public <A, B> Option<B> unapply(Right<A, B> right) {
        return right == null ? None$.MODULE$ : new Some(right.m8b());
    }
}
