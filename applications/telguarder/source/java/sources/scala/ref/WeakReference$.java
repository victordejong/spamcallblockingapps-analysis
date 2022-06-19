package scala.ref;

import scala.None$;
import scala.Option;
import scala.Some;
/* loaded from: classes3-dex2jar.jar:scala/ref/WeakReference$.class */
public final class WeakReference$ {
    public static final WeakReference$ MODULE$ = null;

    static {
        new WeakReference$();
    }

    private WeakReference$() {
        MODULE$ = this;
    }

    public <T> WeakReference<T> apply(T t) {
        return new WeakReference<>(t);
    }

    public <T> Option<T> unapply(WeakReference<T> weakReference) {
        T t = weakReference.underlying().get();
        return t == null ? None$.MODULE$ : new Some(t);
    }
}
