package scala.util.control;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
import scala.util.Failure;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch$$anonfun$toTry$1.class */
public final class Exception$Catch$$anonfun$toTry$1 extends AbstractFunction1<Throwable, Failure<Nothing$>> implements Serializable {
    public static final long serialVersionUID = 0;

    public Exception$Catch$$anonfun$toTry$1(Exception.Catch<T> r3) {
    }

    public final Failure<Nothing$> apply(Throwable th) {
        return new Failure<>(th);
    }
}
