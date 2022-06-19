package scala;

import scala.runtime.AbstractFunction1$mcVF$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$apply$3.class */
public final class Array$$anonfun$apply$3 extends AbstractFunction1$mcVF$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final float[] array$8;
    private final IntRef i$8;

    public Array$$anonfun$apply$3(float[] fArr, IntRef intRef) {
        this.array$8 = fArr;
        this.i$8 = intRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToFloat(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVF$sp
    public final void apply(float f) {
        apply$mcVF$sp(f);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public void apply$mcVF$sp(float f) {
        this.array$8[this.i$8.elem] = f;
        this.i$8.elem++;
    }
}
