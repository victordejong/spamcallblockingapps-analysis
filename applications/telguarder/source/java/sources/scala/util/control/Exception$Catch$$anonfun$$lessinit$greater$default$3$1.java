package scala.util.control;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch$$anonfun$$lessinit$greater$default$3$1.class */
public final class Exception$Catch$$anonfun$$lessinit$greater$default$3$1 extends AbstractFunction1<Throwable, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Throwable) obj));
    }

    public final boolean apply(Throwable th) {
        return Exception$.MODULE$.shouldRethrow(th);
    }
}
