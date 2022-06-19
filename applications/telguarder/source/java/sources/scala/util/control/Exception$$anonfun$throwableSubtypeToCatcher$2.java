package scala.util.control;

import scala.PartialFunction;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$2.class */
public final class Exception$$anonfun$throwableSubtypeToCatcher$2 extends AbstractFunction1<Ex, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final PartialFunction pf$1;

    public Exception$$anonfun$throwableSubtypeToCatcher$2(PartialFunction partialFunction) {
        this.pf$1 = partialFunction;
    }

    public final Object apply(Throwable th) {
        return this.pf$1.apply(th);
    }
}
