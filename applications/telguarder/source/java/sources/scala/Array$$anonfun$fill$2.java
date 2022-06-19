package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$fill$2.class */
public final class Array$$anonfun$fill$2 extends AbstractFunction1<Object, Object[]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 elem$4;
    private final ClassTag evidence$11$1;
    private final int n2$12;
    private final int n3$9;

    public Array$$anonfun$fill$2(int i, int i2, Function0 function0, ClassTag classTag) {
        this.n2$12 = i;
        this.n3$9 = i2;
        this.elem$4 = function0;
        this.evidence$11$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[] apply(int i) {
        return Array$.MODULE$.fill(this.n2$12, this.n3$9, this.elem$4, this.evidence$11$1);
    }
}
