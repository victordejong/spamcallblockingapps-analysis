package scala.collection.generic;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2$$anonfun$apply$2.class */
public final class GenTraversableFactory$$anonfun$tabulate$2$$anonfun$apply$2 extends AbstractFunction2<Object, Object, A> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory$$anonfun$tabulate$2 $outer;
    private final int i1$2;

    public GenTraversableFactory$$anonfun$tabulate$2$$anonfun$apply$2(GenTraversableFactory$$anonfun$tabulate$2 genTraversableFactory$$anonfun$tabulate$2, int i) {
        Objects.requireNonNull(genTraversableFactory$$anonfun$tabulate$2);
        this.$outer = genTraversableFactory$$anonfun$tabulate$2;
        this.i1$2 = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [A, java.lang.Object] */
    public final A apply(int i, int i2) {
        return this.$outer.f$3.apply(BoxesRunTime.boxToInteger(this.i1$2), BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2));
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2));
    }
}
