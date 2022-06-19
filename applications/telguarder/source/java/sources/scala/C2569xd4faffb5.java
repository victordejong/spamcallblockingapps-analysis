package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* renamed from: scala.Function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2$$anonfun$apply$3 */
/* loaded from: classes3-dex2jar.jar:scala/Function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2$$anonfun$apply$3.class */
public final class C2569xd4faffb5 extends AbstractFunction1<T4, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2 $outer;
    private final Object x3$1;

    public C2569xd4faffb5(Function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2 function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2, Object obj) {
        Objects.requireNonNull(function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2);
        this.$outer = function4$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2;
        this.x3$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [R, java.lang.Object] */
    @Override // scala.Function1
    public final R apply(T4 t4) {
        return this.$outer.$outer.$outer.$outer.apply(this.$outer.$outer.x1$1, this.$outer.x2$1, this.x3$1, t4);
    }
}
