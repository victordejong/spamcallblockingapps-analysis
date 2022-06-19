package scala.util.control;

import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$failAsValue$1.class */
public final class Exception$$anonfun$failAsValue$1 extends AbstractFunction1<Throwable, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 value$1;

    public Exception$$anonfun$failAsValue$1(Function0 function0) {
        this.value$1 = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    public final T apply(Throwable th) {
        return this.value$1.apply();
    }
}
