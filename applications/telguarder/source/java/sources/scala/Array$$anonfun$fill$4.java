package scala;

import scala.reflect.ClassTag;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$fill$4.class */
public final class Array$$anonfun$fill$4 extends AbstractFunction1<Object, Object[][][]> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 elem$2;
    private final ClassTag evidence$13$1;
    private final int n2$10;
    private final int n3$7;
    private final int n4$5;
    private final int n5$3;

    public Array$$anonfun$fill$4(int i, int i2, int i3, int i4, Function0 function0, ClassTag classTag) {
        this.n2$10 = i;
        this.n3$7 = i2;
        this.n4$5 = i3;
        this.n5$3 = i4;
        this.elem$2 = function0;
        this.evidence$13$1 = classTag;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Object[][][] apply(int i) {
        return Array$.MODULE$.fill(this.n2$10, this.n3$7, this.n4$5, this.n5$3, this.elem$2, this.evidence$13$1);
    }
}
