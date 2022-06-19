package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$apply$7.class */
public final class Array$$anonfun$apply$7 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final byte[] array$3;
    private final IntRef i$3;

    public Array$$anonfun$apply$7(byte[] bArr, IntRef intRef) {
        this.array$3 = bArr;
        this.i$3 = intRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply(BoxesRunTime.unboxToByte(obj));
        return BoxedUnit.UNIT;
    }

    public final void apply(byte b) {
        this.array$3[this.i$3.elem] = b;
        this.i$3.elem++;
    }
}
