package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function19$$anonfun$curried$1.class */
public final class Function19$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, Function1<T14, Function1<T15, Function1<T16, Function1<T17, Function1<T18, Function1<T19, R>>>>>>>>>>>>>>>>>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function19 $outer;

    public Function19$$anonfun$curried$1(Function19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, R> function19) {
        Objects.requireNonNull(function19);
        this.$outer = function19;
    }

    @Override // scala.Function1
    public final Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, Function1<T14, Function1<T15, Function1<T16, Function1<T17, Function1<T18, Function1<T19, R>>>>>>>>>>>>>>>>>> apply(T1 t1) {
        return new Function19$$anonfun$curried$1$$anonfun$apply$1(this, t1).curried();
    }

    public /* synthetic */ Function19 scala$Function19$$anonfun$$$outer() {
        return this.$outer;
    }
}
