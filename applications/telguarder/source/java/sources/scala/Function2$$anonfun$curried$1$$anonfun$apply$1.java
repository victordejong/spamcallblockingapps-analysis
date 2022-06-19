package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function2$$anonfun$curried$1$$anonfun$apply$1.class */
public final class Function2$$anonfun$curried$1$$anonfun$apply$1 extends AbstractFunction1<T2, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function2$$anonfun$curried$1 $outer;
    private final Object x1$1;

    public Function2$$anonfun$curried$1$$anonfun$apply$1(Function2$$anonfun$curried$1 function2$$anonfun$curried$1, Object obj) {
        Objects.requireNonNull(function2$$anonfun$curried$1);
        this.$outer = function2$$anonfun$curried$1;
        this.x1$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [R, java.lang.Object] */
    @Override // scala.Function1
    public final R apply(T2 t2) {
        return this.$outer.$outer.apply(this.x1$1, t2);
    }
}
