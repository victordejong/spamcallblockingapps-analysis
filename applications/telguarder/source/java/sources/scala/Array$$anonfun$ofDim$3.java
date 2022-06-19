package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$ofDim$3.class */
public final class Array$$anonfun$ofDim$3 extends AbstractFunction1<Object, Object[][]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ClassTag evidence$6$1;
    private final int n2$8;
    private final int n3$6;
    private final int n4$4;

    public Array$$anonfun$ofDim$3(int i, int i2, int i3, ClassTag classTag) {
        this.n2$8 = i;
        this.n3$6 = i2;
        this.n4$4 = i3;
        this.evidence$6$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[][] apply(int i) {
        return Array$.MODULE$.ofDim(this.n2$8, this.n3$6, this.n4$4, this.evidence$6$1);
    }
}
