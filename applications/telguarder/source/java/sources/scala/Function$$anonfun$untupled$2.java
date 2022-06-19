package scala;

import scala.runtime.AbstractFunction3;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$untupled$2.class */
public final class Function$$anonfun$untupled$2 extends AbstractFunction3<a1, a2, a3, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$10;

    public Function$$anonfun$untupled$2(Function1 function1) {
        this.f$10 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [b, java.lang.Object] */
    @Override // scala.Function3
    public final b apply(a1 a1, a2 a2, a3 a3) {
        return this.f$10.apply(new Tuple3(a1, a2, a3));
    }
}
