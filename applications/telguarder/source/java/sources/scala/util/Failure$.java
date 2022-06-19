package scala.util;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
/* loaded from: classes3-dex2jar.jar:scala/util/Failure$.class */
public final class Failure$ implements Serializable {
    public static final Failure$ MODULE$ = null;

    static {
        new Failure$();
    }

    private Failure$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> Failure<T> apply(Throwable th) {
        return new Failure<>(th);
    }

    public final String toString() {
        return "Failure";
    }

    public <T> Option<Throwable> unapply(Failure<T> failure) {
        return failure == null ? None$.MODULE$ : new Some(failure.exception());
    }
}
