package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function18$$anonfun$curried$1.class */
public final class Function18$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, Function1<T14, Function1<T15, Function1<T16, Function1<T17, Function1<T18, R>>>>>>>>>>>>>>>>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function18 $outer;

    public Function18$$anonfun$curried$1(Function18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, R> function18) {
        Objects.requireNonNull(function18);
        this.$outer = function18;
    }

    @Override // scala.Function1
    public final Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, Function1<T14, Function1<T15, Function1<T16, Function1<T17, Function1<T18, R>>>>>>>>>>>>>>>>> apply(T1 t1) {
        return new Function18$$anonfun$curried$1$$anonfun$apply$1(this, t1).curried();
    }

    public /* synthetic */ Function18 scala$Function18$$anonfun$$$outer() {
        return this.$outer;
    }
}
