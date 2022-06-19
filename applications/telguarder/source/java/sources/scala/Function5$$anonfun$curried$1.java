package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function5$$anonfun$curried$1.class */
public final class Function5$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, R>>>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function5 $outer;

    public Function5$$anonfun$curried$1(Function5<T1, T2, T3, T4, T5, R> function5) {
        Objects.requireNonNull(function5);
        this.$outer = function5;
    }

    @Override // scala.Function1
    public final Function1<T2, Function1<T3, Function1<T4, Function1<T5, R>>>> apply(T1 t1) {
        return new Function5$$anonfun$curried$1$$anonfun$apply$1(this, t1).curried();
    }

    public /* synthetic */ Function5 scala$Function5$$anonfun$$$outer() {
        return this.$outer;
    }
}
