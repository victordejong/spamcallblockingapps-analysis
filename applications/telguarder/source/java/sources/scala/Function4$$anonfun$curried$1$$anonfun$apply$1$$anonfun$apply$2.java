package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2.class */
public final class Function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2 extends AbstractFunction1<T3, Function1<T4, R>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Function4$$anonfun$curried$1$$anonfun$apply$1 $outer;
    public final Object x2$1;

    public Function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2(Function4$$anonfun$curried$1$$anonfun$apply$1 function4$$anonfun$curried$1$$anonfun$apply$1, Object obj) {
        Objects.requireNonNull(function4$$anonfun$curried$1$$anonfun$apply$1);
        this.$outer = function4$$anonfun$curried$1$$anonfun$apply$1;
        this.x2$1 = obj;
    }

    @Override // scala.Function1
    public final Function1<T4, R> apply(T3 t3) {
        return new C2569xd4faffb5(this, t3);
    }

    public /* synthetic */ Function4$$anonfun$curried$1$$anonfun$apply$1 scala$Function4$$anonfun$$anonfun$$anonfun$$$outer() {
        return this.$outer;
    }
}
