package scala.sys.process;

import java.io.IOException;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractPartialFunction;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/processInternal$$anonfun$ioFailure$1.class */
public final class processInternal$$anonfun$ioFailure$1 extends AbstractPartialFunction<Throwable, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 handler$2;

    public processInternal$$anonfun$ioFailure$1(Function1 function1) {
        this.handler$2 = function1;
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.PartialFunction
    public final /* bridge */ /* synthetic */ Object applyOrElse(Object obj, Function1 function1) {
        return applyOrElse((processInternal$$anonfun$ioFailure$1) ((Throwable) obj), (Function1<processInternal$$anonfun$ioFailure$1, Object>) function1);
    }

    public final <A1 extends Throwable, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        IOException iOException = a1;
        if (a1 instanceof IOException) {
            iOException = (IOException) a1;
            function1 = this.handler$2;
        }
        return function1.apply(iOException);
    }

    public final boolean isDefinedAt(Throwable th) {
        return th instanceof IOException;
    }
}
