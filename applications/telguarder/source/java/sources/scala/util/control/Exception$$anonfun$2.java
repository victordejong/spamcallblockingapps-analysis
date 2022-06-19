package scala.util.control;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$2.class */
public final class Exception$$anonfun$2 extends AbstractFunction1<Throwable, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        throw apply((Throwable) obj);
    }

    public final Nothing$ apply(Throwable th) {
        throw th;
    }
}
