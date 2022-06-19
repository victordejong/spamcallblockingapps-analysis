package scala.util.control;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$allCatcher$1.class */
public final class Exception$$anonfun$allCatcher$1 extends AbstractFunction1<Throwable, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Throwable) obj));
    }

    public final boolean apply(Throwable th) {
        return true;
    }
}
