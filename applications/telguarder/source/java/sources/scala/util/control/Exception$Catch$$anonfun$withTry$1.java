package scala.util.control;

import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.util.Success;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch$$anonfun$withTry$1.class */
public final class Exception$Catch$$anonfun$withTry$1 extends AbstractFunction0<Success<U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 body$3;

    /* JADX WARN: Multi-variable type inference failed */
    public Exception$Catch$$anonfun$withTry$1(Exception.Catch r4, Exception.Catch<T> r5) {
        this.body$3 = r5;
    }

    @Override // scala.Function0
    public final Success<U> apply() {
        return new Success<>(this.body$3.apply());
    }
}
