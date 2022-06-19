package scala.util.control;

import scala.PartialFunction;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$1.class */
public final class Exception$$anonfun$throwableSubtypeToCatcher$1 extends AbstractFunction1<Ex, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final PartialFunction pf$1;

    public Exception$$anonfun$throwableSubtypeToCatcher$1(PartialFunction partialFunction) {
        this.pf$1 = partialFunction;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Throwable) obj));
    }

    public final boolean apply(Throwable th) {
        return this.pf$1.isDefinedAt(th);
    }
}
