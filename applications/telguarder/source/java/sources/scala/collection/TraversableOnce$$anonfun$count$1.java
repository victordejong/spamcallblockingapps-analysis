package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$count$1.class */
public final class TraversableOnce$$anonfun$count$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final IntRef cnt$1;
    private final Function1 p$1;

    public TraversableOnce$$anonfun$count$1(TraversableOnce traversableOnce, IntRef intRef, Function1 function1) {
        this.cnt$1 = intRef;
        this.p$1 = function1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        if (BoxesRunTime.unboxToBoolean(this.p$1.apply(a))) {
            this.cnt$1.elem++;
        }
    }
}
