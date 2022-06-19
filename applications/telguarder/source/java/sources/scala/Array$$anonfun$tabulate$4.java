package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$tabulate$4.class */
public final class Array$$anonfun$tabulate$4 extends AbstractFunction1<Object, Object[][][]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ClassTag evidence$18$1;
    public final Function5 f$1;
    private final int n2$3;
    private final int n3$2;
    private final int n4$1;
    private final int n5$1;

    public Array$$anonfun$tabulate$4(int i, int i2, int i3, int i4, Function5 function5, ClassTag classTag) {
        this.n2$3 = i;
        this.n3$2 = i2;
        this.n4$1 = i3;
        this.n5$1 = i4;
        this.f$1 = function5;
        this.evidence$18$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[][][] apply(int i) {
        return Array$.MODULE$.tabulate(this.n2$3, this.n3$2, this.n4$1, this.n5$1, new Array$$anonfun$tabulate$4$$anonfun$apply$14(this, i), this.evidence$18$1);
    }
}
