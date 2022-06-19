package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$ofDim$4.class */
public final class Array$$anonfun$ofDim$4 extends AbstractFunction1<Object, Object[][][]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ClassTag evidence$7$1;
    private final int n2$7;
    private final int n3$5;
    private final int n4$3;
    private final int n5$2;

    public Array$$anonfun$ofDim$4(int i, int i2, int i3, int i4, ClassTag classTag) {
        this.n2$7 = i;
        this.n3$5 = i2;
        this.n4$3 = i3;
        this.n5$2 = i4;
        this.evidence$7$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[][][] apply(int i) {
        return Array$.MODULE$.ofDim(this.n2$7, this.n3$5, this.n4$3, this.n5$2, this.evidence$7$1);
    }
}
