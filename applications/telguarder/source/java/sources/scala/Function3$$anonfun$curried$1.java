package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function3$$anonfun$curried$1.class */
public final class Function3$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, Function1<T3, R>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function3 $outer;

    public Function3$$anonfun$curried$1(Function3<T1, T2, T3, R> function3) {
        Objects.requireNonNull(function3);
        this.$outer = function3;
    }

    @Override // scala.Function1
    public final Function1<T2, Function1<T3, R>> apply(T1 t1) {
        return new Function3$$anonfun$curried$1$$anonfun$apply$1(this, t1);
    }

    public /* synthetic */ Function3 scala$Function3$$anonfun$$$outer() {
        return this.$outer;
    }
}
