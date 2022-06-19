package scala;

import scala.runtime.AbstractFunction1$mcVJ$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$apply$2.class */
public final class Array$$anonfun$apply$2 extends AbstractFunction1$mcVJ$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final long[] array$7;
    private final IntRef i$7;

    public Array$$anonfun$apply$2(long[] jArr, IntRef intRef) {
        this.array$7 = jArr;
        this.i$7 = intRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToLong(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVJ$sp
    public final void apply(long j) {
        apply$mcVJ$sp(j);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public void apply$mcVJ$sp(long j) {
        this.array$7[this.i$7.elem] = j;
        this.i$7.elem++;
    }
}
