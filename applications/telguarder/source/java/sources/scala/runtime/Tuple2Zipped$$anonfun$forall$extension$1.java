package scala.runtime;

import scala.Function2;
import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple2Zipped$$anonfun$forall$extension$1.class */
public final class Tuple2Zipped$$anonfun$forall$extension$1 extends AbstractFunction2<El1, El2, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function2 f$5;

    public Tuple2Zipped$$anonfun$forall$extension$1(Function2 function2) {
        this.f$5 = function2;
    }

    @Override // scala.Function2
    public final boolean apply(El1 el1, El2 el2) {
        return !BoxesRunTime.unboxToBoolean(this.f$5.apply(el1, el2));
    }
}
