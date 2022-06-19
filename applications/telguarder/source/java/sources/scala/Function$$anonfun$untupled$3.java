package scala;

import scala.runtime.AbstractFunction4;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$untupled$3.class */
public final class Function$$anonfun$untupled$3 extends AbstractFunction4<a1, a2, a3, a4, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$11;

    public Function$$anonfun$untupled$3(Function1 function1) {
        this.f$11 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [b, java.lang.Object] */
    @Override // scala.Function4
    public final b apply(a1 a1, a2 a2, a3 a3, a4 a4) {
        return this.f$11.apply(new Tuple4(a1, a2, a3, a4));
    }
}
