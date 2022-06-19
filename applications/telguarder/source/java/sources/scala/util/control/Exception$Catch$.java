package scala.util.control;

import scala.Function1;
import scala.None$;
import scala.Option;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch$.class */
public class Exception$Catch$ {
    public static final Exception$Catch$ MODULE$ = null;

    static {
        new Exception$Catch$();
    }

    public Exception$Catch$() {
        MODULE$ = this;
    }

    public <T> Option<Exception.Finally> $lessinit$greater$default$2() {
        return None$.MODULE$;
    }

    public <T> Function1<Throwable, Object> $lessinit$greater$default$3() {
        return new Exception$Catch$$anonfun$$lessinit$greater$default$3$1();
    }
}
