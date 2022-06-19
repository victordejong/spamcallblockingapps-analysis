package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$tabulate$2.class */
public final class Array$$anonfun$tabulate$2 extends AbstractFunction1<Object, Object[]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ClassTag evidence$16$1;
    public final Function3 f$3;
    private final int n2$5;
    private final int n3$4;

    public Array$$anonfun$tabulate$2(int i, int i2, Function3 function3, ClassTag classTag) {
        this.n2$5 = i;
        this.n3$4 = i2;
        this.f$3 = function3;
        this.evidence$16$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[] apply(int i) {
        return Array$.MODULE$.tabulate(this.n2$5, this.n3$4, new Array$$anonfun$tabulate$2$$anonfun$apply$12(this, i), this.evidence$16$1);
    }
}
