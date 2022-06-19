package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$ofDim$2.class */
public final class Array$$anonfun$ofDim$2 extends AbstractFunction1<Object, Object[]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ClassTag evidence$5$1;
    private final int n2$2;
    private final int n3$1;

    public Array$$anonfun$ofDim$2(int i, int i2, ClassTag classTag) {
        this.n2$2 = i;
        this.n3$1 = i2;
        this.evidence$5$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[] apply(int i) {
        return Array$.MODULE$.ofDim(this.n2$2, this.n3$1, this.evidence$5$1);
    }
}
