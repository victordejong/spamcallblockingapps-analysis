package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$apply$6.class */
public final class Array$$anonfun$apply$6 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final boolean[] array$2;
    private final IntRef i$2;

    public Array$$anonfun$apply$6(boolean[] zArr, IntRef intRef) {
        this.array$2 = zArr;
        this.i$2 = intRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply(BoxesRunTime.unboxToBoolean(obj));
        return BoxedUnit.UNIT;
    }

    public final void apply(boolean z) {
        this.array$2[this.i$2.elem] = z;
        this.i$2.elem++;
    }
}
