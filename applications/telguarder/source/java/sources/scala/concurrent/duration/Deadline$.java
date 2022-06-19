package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/Deadline$.class */
public final class Deadline$ implements Serializable {
    public static final Deadline$ MODULE$ = null;

    static {
        new Deadline$();
    }

    private Deadline$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public Deadline apply(FiniteDuration finiteDuration) {
        return new Deadline(finiteDuration);
    }

    public Deadline now() {
        return new Deadline(Duration$.MODULE$.apply(System.nanoTime(), TimeUnit.NANOSECONDS));
    }

    public Option<FiniteDuration> unapply(Deadline deadline) {
        return deadline == null ? None$.MODULE$ : new Some(deadline.time());
    }
}
