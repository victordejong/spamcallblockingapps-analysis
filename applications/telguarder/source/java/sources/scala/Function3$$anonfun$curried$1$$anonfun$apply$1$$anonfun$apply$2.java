package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function3$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2.class */
public final class Function3$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2 extends AbstractFunction1<T3, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function3$$anonfun$curried$1$$anonfun$apply$1 $outer;
    private final Object x2$1;

    public Function3$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2(Function3$$anonfun$curried$1$$anonfun$apply$1 function3$$anonfun$curried$1$$anonfun$apply$1, Object obj) {
        Objects.requireNonNull(function3$$anonfun$curried$1$$anonfun$apply$1);
        this.$outer = function3$$anonfun$curried$1$$anonfun$apply$1;
        this.x2$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    @Override // scala.Function1
    public final R apply(T3 t3) {
        return this.$outer.$outer.$outer.apply(this.$outer.x1$1, this.x2$1, t3);
    }
}
