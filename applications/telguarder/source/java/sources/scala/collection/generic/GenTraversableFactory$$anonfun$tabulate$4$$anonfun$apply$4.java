package scala.collection.generic;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction4;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4$$anonfun$apply$4.class */
public final class GenTraversableFactory$$anonfun$tabulate$4$$anonfun$apply$4 extends AbstractFunction4<Object, Object, Object, Object, A> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory$$anonfun$tabulate$4 $outer;
    private final int i1$4;

    public GenTraversableFactory$$anonfun$tabulate$4$$anonfun$apply$4(GenTraversableFactory$$anonfun$tabulate$4 genTraversableFactory$$anonfun$tabulate$4, int i) {
        Objects.requireNonNull(genTraversableFactory$$anonfun$tabulate$4);
        this.$outer = genTraversableFactory$$anonfun$tabulate$4;
        this.i1$4 = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [A, java.lang.Object] */
    public final A apply(int i, int i2, int i3, int i4) {
        return this.$outer.f$1.apply(BoxesRunTime.boxToInteger(this.i1$4), BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2), BoxesRunTime.boxToInteger(i3), BoxesRunTime.boxToInteger(i4));
    }

    @Override // scala.Function4
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
        return apply(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2), BoxesRunTime.unboxToInt(obj3), BoxesRunTime.unboxToInt(obj4));
    }
}
