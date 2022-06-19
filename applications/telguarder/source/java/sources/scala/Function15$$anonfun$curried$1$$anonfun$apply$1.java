package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction14;
/* loaded from: classes3-dex2jar.jar:scala/Function15$$anonfun$curried$1$$anonfun$apply$1.class */
public final class Function15$$anonfun$curried$1$$anonfun$apply$1 extends AbstractFunction14<T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function15$$anonfun$curried$1 $outer;
    private final Object x1$1;

    public Function15$$anonfun$curried$1$$anonfun$apply$1(Function15$$anonfun$curried$1 function15$$anonfun$curried$1, Object obj) {
        Objects.requireNonNull(function15$$anonfun$curried$1);
        this.$outer = function15$$anonfun$curried$1;
        this.x1$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [R, java.lang.Object] */
    @Override // scala.Function14
    public final R apply(T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15) {
        return this.$outer.$outer.apply(this.x1$1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15);
    }
}
