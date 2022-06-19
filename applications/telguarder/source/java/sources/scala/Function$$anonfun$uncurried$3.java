package scala;

import scala.runtime.AbstractFunction4;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$uncurried$3.class */
public final class Function$$anonfun$uncurried$3 extends AbstractFunction4<a1, a2, a3, a4, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$3;

    public Function$$anonfun$uncurried$3(Function1 function1) {
        this.f$3 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [b, java.lang.Object] */
    @Override // scala.Function4
    public final b apply(a1 a1, a2 a2, a3 a3, a4 a4) {
        return ((Function1) ((Function1) ((Function1) this.f$3.apply(a1)).apply(a2)).apply(a3)).apply(a4);
    }
}
