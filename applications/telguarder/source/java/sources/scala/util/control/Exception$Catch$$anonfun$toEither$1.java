package scala.util.control;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
import scala.util.Left;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch$$anonfun$toEither$1.class */
public final class Exception$Catch$$anonfun$toEither$1 extends AbstractFunction1<Throwable, Left<Throwable, Nothing$>> implements Serializable {
    public static final long serialVersionUID = 0;

    public Exception$Catch$$anonfun$toEither$1(Exception.Catch<T> r3) {
    }

    public final Left<Throwable, Nothing$> apply(Throwable th) {
        return new Left<>(th);
    }
}
