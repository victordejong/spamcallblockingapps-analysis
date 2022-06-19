package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$tabulate$3.class */
public final class Array$$anonfun$tabulate$3 extends AbstractFunction1<Object, Object[][]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ClassTag evidence$17$1;
    public final Function4 f$2;
    private final int n2$4;
    private final int n3$3;
    private final int n4$2;

    public Array$$anonfun$tabulate$3(int i, int i2, int i3, Function4 function4, ClassTag classTag) {
        this.n2$4 = i;
        this.n3$3 = i2;
        this.n4$2 = i3;
        this.f$2 = function4;
        this.evidence$17$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[][] apply(int i) {
        return Array$.MODULE$.tabulate(this.n2$4, this.n3$3, this.n4$2, new Array$$anonfun$tabulate$3$$anonfun$apply$13(this, i), this.evidence$17$1);
    }
}
