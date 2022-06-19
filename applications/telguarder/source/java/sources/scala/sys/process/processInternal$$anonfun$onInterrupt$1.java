package scala.sys.process;

import scala.Function0;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractPartialFunction;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/processInternal$$anonfun$onInterrupt$1.class */
public final class processInternal$$anonfun$onInterrupt$1 extends AbstractPartialFunction<Throwable, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 handler$1;

    public processInternal$$anonfun$onInterrupt$1(Function0 function0) {
        this.handler$1 = function0;
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.PartialFunction
    public final /* bridge */ /* synthetic */ Object applyOrElse(Object obj, Function1 function1) {
        return applyOrElse((processInternal$$anonfun$onInterrupt$1) ((Throwable) obj), (Function1<processInternal$$anonfun$onInterrupt$1, Object>) function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <A1 extends Throwable, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        return a1 instanceof InterruptedException ? this.handler$1.apply() : function1.apply(a1);
    }

    public final boolean isDefinedAt(Throwable th) {
        return th instanceof InterruptedException;
    }
}
