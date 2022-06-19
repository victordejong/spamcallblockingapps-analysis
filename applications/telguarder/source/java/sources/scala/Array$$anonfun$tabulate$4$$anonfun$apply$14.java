package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction4;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$tabulate$4$$anonfun$apply$14.class */
public final class Array$$anonfun$tabulate$4$$anonfun$apply$14 extends AbstractFunction4<Object, Object, Object, Object, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Array$$anonfun$tabulate$4 $outer;
    private final int i1$4;

    public Array$$anonfun$tabulate$4$$anonfun$apply$14(Array$$anonfun$tabulate$4 array$$anonfun$tabulate$4, int i) {
        Objects.requireNonNull(array$$anonfun$tabulate$4);
        this.$outer = array$$anonfun$tabulate$4;
        this.i1$4 = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    public final T apply(int i, int i2, int i3, int i4) {
        return this.$outer.f$1.apply(BoxesRunTime.boxToInteger(this.i1$4), BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2), BoxesRunTime.boxToInteger(i3), BoxesRunTime.boxToInteger(i4));
    }

    @Override // scala.Function4
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
        return apply(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2), BoxesRunTime.unboxToInt(obj3), BoxesRunTime.unboxToInt(obj4));
    }
}
