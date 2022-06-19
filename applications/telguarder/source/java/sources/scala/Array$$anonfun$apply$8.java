package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$apply$8.class */
public final class Array$$anonfun$apply$8 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final short[] array$4;
    private final IntRef i$4;

    public Array$$anonfun$apply$8(short[] sArr, IntRef intRef) {
        this.array$4 = sArr;
        this.i$4 = intRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply(BoxesRunTime.unboxToShort(obj));
        return BoxedUnit.UNIT;
    }

    public final void apply(short s) {
        this.array$4[this.i$4.elem] = s;
        this.i$4.elem++;
    }
}
