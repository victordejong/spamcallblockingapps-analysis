package scala.util.control;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$ignoring$1.class */
public final class Exception$$anonfun$ignoring$1 extends AbstractFunction1<Throwable, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Throwable) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Throwable th) {
    }
}
