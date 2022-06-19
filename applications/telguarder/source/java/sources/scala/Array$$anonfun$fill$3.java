package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$fill$3.class */
public final class Array$$anonfun$fill$3 extends AbstractFunction1<Object, Object[][]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 elem$3;
    private final ClassTag evidence$12$1;
    private final int n2$11;
    private final int n3$8;
    private final int n4$6;

    public Array$$anonfun$fill$3(int i, int i2, int i3, Function0 function0, ClassTag classTag) {
        this.n2$11 = i;
        this.n3$8 = i2;
        this.n4$6 = i3;
        this.elem$3 = function0;
        this.evidence$12$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[][] apply(int i) {
        return Array$.MODULE$.fill(this.n2$11, this.n3$8, this.n4$6, this.elem$3, this.evidence$12$1);
    }
}
