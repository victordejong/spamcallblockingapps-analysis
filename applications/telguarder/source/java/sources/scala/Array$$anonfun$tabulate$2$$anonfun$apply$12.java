package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$tabulate$2$$anonfun$apply$12.class */
public final class Array$$anonfun$tabulate$2$$anonfun$apply$12 extends AbstractFunction2<Object, Object, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Array$$anonfun$tabulate$2 $outer;
    private final int i1$2;

    public Array$$anonfun$tabulate$2$$anonfun$apply$12(Array$$anonfun$tabulate$2 array$$anonfun$tabulate$2, int i) {
        Objects.requireNonNull(array$$anonfun$tabulate$2);
        this.$outer = array$$anonfun$tabulate$2;
        this.i1$2 = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    public final T apply(int i, int i2) {
        return this.$outer.f$3.apply(BoxesRunTime.boxToInteger(this.i1$2), BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2));
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2));
    }
}
