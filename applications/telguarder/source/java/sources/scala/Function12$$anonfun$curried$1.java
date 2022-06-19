package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function12$$anonfun$curried$1.class */
public final class Function12$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, R>>>>>>>>>>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function12 $outer;

    public Function12$$anonfun$curried$1(Function12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R> function12) {
        Objects.requireNonNull(function12);
        this.$outer = function12;
    }

    @Override // scala.Function1
    public final Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, R>>>>>>>>>>> apply(T1 t1) {
        return new Function12$$anonfun$curried$1$$anonfun$apply$1(this, t1).curried();
    }

    public /* synthetic */ Function12 scala$Function12$$anonfun$$$outer() {
        return this.$outer;
    }
}
