package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function8$$anonfun$curried$1.class */
public final class Function8$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, R>>>>>>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function8 $outer;

    public Function8$$anonfun$curried$1(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> function8) {
        Objects.requireNonNull(function8);
        this.$outer = function8;
    }

    @Override // scala.Function1
    public final Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, R>>>>>>> apply(T1 t1) {
        return new Function8$$anonfun$curried$1$$anonfun$apply$1(this, t1).curried();
    }

    public /* synthetic */ Function8 scala$Function8$$anonfun$$$outer() {
        return this.$outer;
    }
}
