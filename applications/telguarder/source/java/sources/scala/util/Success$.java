package scala.util;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
/* loaded from: classes3-dex2jar.jar:scala/util/Success$.class */
public final class Success$ implements Serializable {
    public static final Success$ MODULE$ = null;

    static {
        new Success$();
    }

    private Success$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> Success<T> apply(T t) {
        return new Success<>(t);
    }

    public final String toString() {
        return "Success";
    }

    public <T> Option<T> unapply(Success<T> success) {
        return success == null ? None$.MODULE$ : new Some(success.value());
    }
}
