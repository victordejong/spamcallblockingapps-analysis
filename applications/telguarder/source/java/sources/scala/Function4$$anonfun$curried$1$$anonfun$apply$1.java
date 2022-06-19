package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function4$$anonfun$curried$1$$anonfun$apply$1.class */
public final class Function4$$anonfun$curried$1$$anonfun$apply$1 extends AbstractFunction1<T2, Function1<T3, Function1<T4, R>>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function4$$anonfun$curried$1 $outer;
    public final Object x1$1;

    public Function4$$anonfun$curried$1$$anonfun$apply$1(Function4$$anonfun$curried$1 function4$$anonfun$curried$1, Object obj) {
        Objects.requireNonNull(function4$$anonfun$curried$1);
        this.$outer = function4$$anonfun$curried$1;
        this.x1$1 = obj;
    }

    @Override // scala.Function1
    public final Function1<T3, Function1<T4, R>> apply(T2 t2) {
        return new Function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2(this, t2);
    }

    public /* synthetic */ Function4$$anonfun$curried$1 scala$Function4$$anonfun$$anonfun$$$outer() {
        return this.$outer;
    }
}
