package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$apply$10.class */
public final class Array$$anonfun$apply$10 extends AbstractFunction1<BoxedUnit, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final BoxedUnit[] array$10;
    private final IntRef i$10;

    public Array$$anonfun$apply$10(BoxedUnit[] boxedUnitArr, IntRef intRef) {
        this.array$10 = boxedUnitArr;
        this.i$10 = intRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((BoxedUnit) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(BoxedUnit boxedUnit) {
        this.array$10[this.i$10.elem] = boxedUnit;
        this.i$10.elem++;
    }
}
