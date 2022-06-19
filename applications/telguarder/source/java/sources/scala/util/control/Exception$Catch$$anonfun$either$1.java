package scala.util.control;

import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.runtime.Nothing$;
import scala.util.Right;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch$$anonfun$either$1.class */
public final class Exception$Catch$$anonfun$either$1 extends AbstractFunction0<Right<Nothing$, U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 body$2;

    /* JADX WARN: Multi-variable type inference failed */
    public Exception$Catch$$anonfun$either$1(Exception.Catch r4, Exception.Catch<T> r5) {
        this.body$2 = r5;
    }

    @Override // scala.Function0
    public final Right<Nothing$, U> apply() {
        return new Right<>(this.body$2.apply());
    }
}
