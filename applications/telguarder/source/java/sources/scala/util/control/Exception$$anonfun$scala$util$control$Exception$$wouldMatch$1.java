package scala.util.control;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$scala$util$control$Exception$$wouldMatch$1.class */
public final class Exception$$anonfun$scala$util$control$Exception$$wouldMatch$1 extends AbstractFunction1<Class<?>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Throwable x$15;

    public Exception$$anonfun$scala$util$control$Exception$$wouldMatch$1(Throwable th) {
        this.x$15 = th;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Class) obj));
    }

    public final boolean apply(Class<?> cls) {
        return cls.isAssignableFrom(this.x$15.getClass());
    }
}
