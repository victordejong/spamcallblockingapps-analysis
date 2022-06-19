package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction21;
/* loaded from: classes3-dex2jar.jar:scala/Function22$$anonfun$curried$1$$anonfun$apply$1.class */
public final class Function22$$anonfun$curried$1$$anonfun$apply$1 extends AbstractFunction21<T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function22$$anonfun$curried$1 $outer;
    private final Object x1$1;

    public Function22$$anonfun$curried$1$$anonfun$apply$1(Function22$$anonfun$curried$1 function22$$anonfun$curried$1, Object obj) {
        Objects.requireNonNull(function22$$anonfun$curried$1);
        this.$outer = function22$$anonfun$curried$1;
        this.x1$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [R, java.lang.Object] */
    @Override // scala.Function21
    public final R apply(T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16, T17 t17, T18 t18, T19 t19, T20 t20, T21 t21, T22 t22) {
        return this.$outer.$outer.apply(this.x1$1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21, t22);
    }
}
