package scala.util.control;

import scala.None$;
import scala.Option;
import scala.Some;
/* loaded from: classes3-dex2jar.jar:scala/util/control/NonFatal$.class */
public final class NonFatal$ {
    public static final NonFatal$ MODULE$ = null;

    static {
        new NonFatal$();
    }

    private NonFatal$() {
        MODULE$ = this;
    }

    public boolean apply(Throwable th) {
        return !((th instanceof VirtualMachineError) || (th instanceof ThreadDeath) || (th instanceof InterruptedException) || (th instanceof LinkageError) || (th instanceof ControlThrowable));
    }

    public Option<Throwable> unapply(Throwable th) {
        return apply(th) ? new Some(th) : None$.MODULE$;
    }
}
