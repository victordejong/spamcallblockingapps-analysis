package scala.collection.parallel;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractPartialFunction;
import scala.runtime.BoxedUnit;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
/* renamed from: scala.collection.parallel.FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1.class */
public final class C2582x16c53517 extends AbstractPartialFunction<Try<Task<R, Tp>>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Task task$1;

    public C2582x16c53517(FutureTasks futureTasks, Task task) {
        this.task$1 = task;
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.PartialFunction
    public final /* bridge */ /* synthetic */ Object applyOrElse(Object obj, Function1 function1) {
        return applyOrElse((C2582x16c53517) ((Try) obj), (Function1<C2582x16c53517, Object>) function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [scala.runtime.BoxedUnit] */
    /* JADX WARN: Type inference failed for: r0v18, types: [scala.runtime.BoxedUnit] */
    public final <A1 extends Try<Task<R, Tp>>, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        B1 b1;
        if (a1 instanceof Success) {
            Success success = (Success) a1;
            this.task$1.throwable_$eq(((Task) success.value()).throwable());
            this.task$1.result_$eq(((Task) success.value()).result());
            b1 = BoxedUnit.UNIT;
        } else if (a1 instanceof Failure) {
            this.task$1.throwable_$eq(((Failure) a1).exception());
            b1 = BoxedUnit.UNIT;
        } else {
            b1 = function1.apply(a1);
        }
        return b1;
    }

    public final boolean isDefinedAt(Try<Task<R, Tp>> r3) {
        boolean z = true;
        if (!(r3 instanceof Success) && !(r3 instanceof Failure)) {
            z = false;
        }
        return z;
    }
}
