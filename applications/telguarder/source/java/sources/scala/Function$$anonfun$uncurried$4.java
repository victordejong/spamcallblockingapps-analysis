package scala;

import scala.runtime.AbstractFunction5;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$uncurried$4.class */
public final class Function$$anonfun$uncurried$4 extends AbstractFunction5<a1, a2, a3, a4, a5, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$4;

    public Function$$anonfun$uncurried$4(Function1 function1) {
        this.f$4 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [b, java.lang.Object] */
    @Override // scala.Function5
    public final b apply(a1 a1, a2 a2, a3 a3, a4 a4, a5 a5) {
        return ((Function1) ((Function1) ((Function1) ((Function1) this.f$4.apply(a1)).apply(a2)).apply(a3)).apply(a4)).apply(a5);
    }
}
