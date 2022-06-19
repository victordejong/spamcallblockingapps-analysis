package scala.concurrent;

import scala.concurrent.impl.Promise;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Promise$.class */
public final class Promise$ {
    public static final Promise$ MODULE$ = null;

    static {
        new Promise$();
    }

    private Promise$() {
        MODULE$ = this;
    }

    public <T> Promise<T> apply() {
        return new Promise.DefaultPromise();
    }

    public <T> Promise<T> failed(Throwable th) {
        return fromTry(new Failure(th));
    }

    public <T> Promise<T> fromTry(Try<T> r5) {
        return new Promise.KeptPromise(r5);
    }

    public <T> Promise<T> successful(T t) {
        return fromTry(new Success(t));
    }
}
