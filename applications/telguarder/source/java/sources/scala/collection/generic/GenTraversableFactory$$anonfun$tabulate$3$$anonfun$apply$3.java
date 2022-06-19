package scala.collection.generic;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction3;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3.class */
public final class GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3 extends AbstractFunction3<Object, Object, Object, A> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory$$anonfun$tabulate$3 $outer;
    private final int i1$3;

    public GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3(GenTraversableFactory$$anonfun$tabulate$3 genTraversableFactory$$anonfun$tabulate$3, int i) {
        Objects.requireNonNull(genTraversableFactory$$anonfun$tabulate$3);
        this.$outer = genTraversableFactory$$anonfun$tabulate$3;
        this.i1$3 = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [A, java.lang.Object] */
    public final A apply(int i, int i2, int i3) {
        return this.$outer.f$2.apply(BoxesRunTime.boxToInteger(this.i1$3), BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2), BoxesRunTime.boxToInteger(i3));
    }

    @Override // scala.Function3
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3) {
        return apply(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2), BoxesRunTime.unboxToInt(obj3));
    }
}
