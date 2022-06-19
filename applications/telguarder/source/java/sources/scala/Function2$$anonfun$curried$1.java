package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function2$$anonfun$curried$1.class */
public final class Function2$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, R>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function2 $outer;

    public Function2$$anonfun$curried$1(Function2<T1, T2, R> function2) {
        Objects.requireNonNull(function2);
        this.$outer = function2;
    }

    @Override // scala.Function1
    public final Function1<T2, R> apply(T1 t1) {
        return new Function2$$anonfun$curried$1$$anonfun$apply$1(this, t1);
    }

    public /* synthetic */ Function2 scala$Function2$$anonfun$$$outer() {
        return this.$outer;
    }
}
