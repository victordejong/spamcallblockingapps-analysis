package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$tabulate$1$$anonfun$apply$11.class */
public final class Array$$anonfun$tabulate$1$$anonfun$apply$11 extends AbstractFunction1<Object, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Array$$anonfun$tabulate$1 $outer;
    private final int i1$1;

    public Array$$anonfun$tabulate$1$$anonfun$apply$11(Array$$anonfun$tabulate$1 array$$anonfun$tabulate$1, int i) {
        Objects.requireNonNull(array$$anonfun$tabulate$1);
        this.$outer = array$$anonfun$tabulate$1;
        this.i1$1 = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    public final T apply(int i) {
        return this.$outer.f$4.apply(BoxesRunTime.boxToInteger(this.i1$1), BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }
}
