package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$tabulate$1.class */
public final class Array$$anonfun$tabulate$1 extends AbstractFunction1<Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ClassTag evidence$15$1;
    public final Function2 f$4;
    private final int n2$6;

    public Array$$anonfun$tabulate$1(int i, Function2 function2, ClassTag classTag) {
        this.n2$6 = i;
        this.f$4 = function2;
        this.evidence$15$1 = classTag;
    }

    public final Object apply(int i) {
        return Array$.MODULE$.tabulate(this.n2$6, new Array$$anonfun$tabulate$1$$anonfun$apply$11(this, i), this.evidence$15$1);
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }
}
