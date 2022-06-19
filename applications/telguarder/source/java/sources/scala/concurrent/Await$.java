package scala.concurrent;

import java.util.concurrent.TimeoutException;
import scala.concurrent.duration.Duration;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Await$.class */
public final class Await$ {
    public static final Await$ MODULE$ = null;

    static {
        new Await$();
    }

    private Await$() {
        MODULE$ = this;
    }

    public <T> Awaitable<T> ready(Awaitable<T> awaitable, Duration duration) throws TimeoutException, InterruptedException {
        package$ package_ = package$.MODULE$;
        return (Awaitable) BlockContext$.MODULE$.current().blockOn(new Await$$anonfun$ready$1(awaitable, duration), AwaitPermission$.MODULE$);
    }

    public <T> T result(Awaitable<T> awaitable, Duration duration) throws Exception {
        package$ package_ = package$.MODULE$;
        return (T) BlockContext$.MODULE$.current().blockOn(new Await$$anonfun$result$1(awaitable, duration), AwaitPermission$.MODULE$);
    }
}
