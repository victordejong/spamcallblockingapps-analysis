package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction10;
/* loaded from: classes3-dex2jar.jar:scala/Function11$$anonfun$curried$1$$anonfun$apply$1.class */
public final class Function11$$anonfun$curried$1$$anonfun$apply$1 extends AbstractFunction10<T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function11$$anonfun$curried$1 $outer;
    private final Object x1$1;

    public Function11$$anonfun$curried$1$$anonfun$apply$1(Function11$$anonfun$curried$1 function11$$anonfun$curried$1, Object obj) {
        Objects.requireNonNull(function11$$anonfun$curried$1);
        this.$outer = function11$$anonfun$curried$1;
        this.x1$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [R, java.lang.Object] */
    @Override // scala.Function10
    public final R apply(T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11) {
        return this.$outer.$outer.apply(this.x1$1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11);
    }
}
