package scala;

import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$untupled$1.class */
public final class Function$$anonfun$untupled$1 extends AbstractFunction2<a1, a2, b> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$9;

    public Function$$anonfun$untupled$1(Function1 function1) {
        this.f$9 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [b, java.lang.Object] */
    @Override // scala.Function2
    public final b apply(a1 a1, a2 a2) {
        return this.f$9.apply(new Tuple2(a1, a2));
    }
}
