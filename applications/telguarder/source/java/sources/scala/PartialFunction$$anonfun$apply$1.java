package scala;

import scala.runtime.AbstractPartialFunction;
/* loaded from: classes3-dex2jar.jar:scala/PartialFunction$$anonfun$apply$1.class */
public final class PartialFunction$$anonfun$apply$1 extends AbstractPartialFunction<A, B> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$1;

    public PartialFunction$$anonfun$apply$1(Function1 function1) {
        this.f$1 = function1;
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.PartialFunction
    public final <A1 extends A, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        return (B1) this.f$1.apply(a1);
    }

    @Override // scala.PartialFunction
    public final boolean isDefinedAt(A a) {
        return true;
    }
}
