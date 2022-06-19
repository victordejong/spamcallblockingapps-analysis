package scala;

import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/Function$$anonfun$chain$1$$anonfun$apply$1.class */
public final class Function$$anonfun$chain$1$$anonfun$apply$1 extends AbstractFunction2<a, Function1<a, a>, a> implements Serializable {
    public static final long serialVersionUID = 0;

    public Function$$anonfun$chain$1$$anonfun$apply$1(Function$$anonfun$chain$1 function$$anonfun$chain$1) {
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((Function$$anonfun$chain$1$$anonfun$apply$1) obj, (Function1<Function$$anonfun$chain$1$$anonfun$apply$1, Function$$anonfun$chain$1$$anonfun$apply$1>) obj2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [a, java.lang.Object] */
    public final a apply(a a, Function1<a, a> function1) {
        return function1.apply(a);
    }
}
