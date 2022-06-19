package scala;

import scala.runtime.AbstractFunction1$mcVD$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$apply$4.class */
public final class Array$$anonfun$apply$4 extends AbstractFunction1$mcVD$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final double[] array$9;
    private final IntRef i$9;

    public Array$$anonfun$apply$4(double[] dArr, IntRef intRef) {
        this.array$9 = dArr;
        this.i$9 = intRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToDouble(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVD$sp
    public final void apply(double d) {
        apply$mcVD$sp(d);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public void apply$mcVD$sp(double d) {
        this.array$9[this.i$9.elem] = d;
        this.i$9.elem++;
    }
}
