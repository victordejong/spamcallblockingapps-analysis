package scala;

import scala.runtime.AbstractPartialFunction;
/* loaded from: classes3-dex2jar.jar:scala/PartialFunction$$anonfun$1.class */
public final class PartialFunction$$anonfun$1 extends AbstractPartialFunction<Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.runtime.AbstractPartialFunction, scala.PartialFunction
    public final <A1, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        return (B1) PartialFunction$.MODULE$.scala$PartialFunction$$fallback_pf;
    }

    @Override // scala.PartialFunction
    public final boolean isDefinedAt(Object obj) {
        return true;
    }
}
