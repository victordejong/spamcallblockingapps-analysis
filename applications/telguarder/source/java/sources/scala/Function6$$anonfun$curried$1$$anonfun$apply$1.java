package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction5;
/* loaded from: classes3-dex2jar.jar:scala/Function6$$anonfun$curried$1$$anonfun$apply$1.class */
public final class Function6$$anonfun$curried$1$$anonfun$apply$1 extends AbstractFunction5<T2, T3, T4, T5, T6, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function6$$anonfun$curried$1 $outer;
    private final Object x1$1;

    public Function6$$anonfun$curried$1$$anonfun$apply$1(Function6$$anonfun$curried$1 function6$$anonfun$curried$1, Object obj) {
        Objects.requireNonNull(function6$$anonfun$curried$1);
        this.$outer = function6$$anonfun$curried$1;
        this.x1$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [R, java.lang.Object] */
    @Override // scala.Function5
    public final R apply(T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
        return this.$outer.$outer.apply(this.x1$1, t2, t3, t4, t5, t6);
    }
}
