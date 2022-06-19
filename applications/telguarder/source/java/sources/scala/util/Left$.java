package scala.util;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
/* loaded from: classes3-dex2jar.jar:scala/util/Left$.class */
public final class Left$ implements Serializable {
    public static final Left$ MODULE$ = null;

    static {
        new Left$();
    }

    private Left$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> Left<A, B> apply(A a) {
        return new Left<>(a);
    }

    public final String toString() {
        return "Left";
    }

    public <A, B> Option<A> unapply(Left<A, B> left) {
        return left == null ? None$.MODULE$ : new Some(left.m9a());
    }
}
