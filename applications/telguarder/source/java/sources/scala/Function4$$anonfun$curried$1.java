package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function4$$anonfun$curried$1.class */
public final class Function4$$anonfun$curried$1 extends AbstractFunction1<T1, Function1<T2, Function1<T3, Function1<T4, R>>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function4 $outer;

    public Function4$$anonfun$curried$1(Function4<T1, T2, T3, T4, R> function4) {
        Objects.requireNonNull(function4);
        this.$outer = function4;
    }

    @Override // scala.Function1
    public final Function1<T2, Function1<T3, Function1<T4, R>>> apply(T1 t1) {
        return new Function4$$anonfun$curried$1$$anonfun$apply$1(this, t1);
    }

    public /* synthetic */ Function4 scala$Function4$$anonfun$$$outer() {
        return this.$outer;
    }
}
