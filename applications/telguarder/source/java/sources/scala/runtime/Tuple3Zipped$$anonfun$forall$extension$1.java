package scala.runtime;

import scala.Function3;
import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple3Zipped$$anonfun$forall$extension$1.class */
public final class Tuple3Zipped$$anonfun$forall$extension$1 extends AbstractFunction3<El1, El2, El3, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function3 f$5;

    public Tuple3Zipped$$anonfun$forall$extension$1(Function3 function3) {
        this.f$5 = function3;
    }

    @Override // scala.Function3
    public final boolean apply(El1 el1, El2 el2, El3 el3) {
        return !BoxesRunTime.unboxToBoolean(this.f$5.apply(el1, el2, el3));
    }
}
