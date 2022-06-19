package scala.util.control;

import scala.None$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch$$anonfun$toOption$1.class */
public final class Exception$Catch$$anonfun$toOption$1 extends AbstractFunction1<Throwable, None$> implements Serializable {
    public static final long serialVersionUID = 0;

    public Exception$Catch$$anonfun$toOption$1(Exception.Catch<T> r3) {
    }

    public final None$ apply(Throwable th) {
        return None$.MODULE$;
    }
}
