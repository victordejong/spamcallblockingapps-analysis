package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$fill$1.class */
public final class Array$$anonfun$fill$1 extends AbstractFunction1<Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 elem$1;
    private final ClassTag evidence$10$1;
    private final int n2$9;

    public Array$$anonfun$fill$1(int i, Function0 function0, ClassTag classTag) {
        this.n2$9 = i;
        this.elem$1 = function0;
        this.evidence$10$1 = classTag;
    }

    public final Object apply(int i) {
        return Array$.MODULE$.fill(this.n2$9, this.elem$1, this.evidence$10$1);
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }
}
