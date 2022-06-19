package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction3;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$tabulate$3$$anonfun$apply$13.class */
public final class Array$$anonfun$tabulate$3$$anonfun$apply$13 extends AbstractFunction3<Object, Object, Object, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Array$$anonfun$tabulate$3 $outer;
    private final int i1$3;

    public Array$$anonfun$tabulate$3$$anonfun$apply$13(Array$$anonfun$tabulate$3 array$$anonfun$tabulate$3, int i) {
        Objects.requireNonNull(array$$anonfun$tabulate$3);
        this.$outer = array$$anonfun$tabulate$3;
        this.i1$3 = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    public final T apply(int i, int i2, int i3) {
        return this.$outer.f$2.apply(BoxesRunTime.boxToInteger(this.i1$3), BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2), BoxesRunTime.boxToInteger(i3));
    }

    @Override // scala.Function3
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3) {
        return apply(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2), BoxesRunTime.unboxToInt(obj3));
    }
}
