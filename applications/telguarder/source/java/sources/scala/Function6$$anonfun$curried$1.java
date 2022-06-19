package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function6$$anonfun$curried$1.class */
public final class Function6$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, R>>>>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function6 $outer;

    public Function6$$anonfun$curried$1(Function6<T1, T2, T3, T4, T5, T6, R> function6) {
        Objects.requireNonNull(function6);
        this.$outer = function6;
    }

    @Override // scala.Function1
    public final Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, R>>>>> apply(T1 t1) {
        return new Function6$$anonfun$curried$1$$anonfun$apply$1(this, t1).curried();
    }

    public /* synthetic */ Function6 scala$Function6$$anonfun$$$outer() {
        return this.$outer;
    }
}
