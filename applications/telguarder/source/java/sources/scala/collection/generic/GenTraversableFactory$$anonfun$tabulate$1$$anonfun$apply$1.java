package scala.collection.generic;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1.class */
public final class GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1 extends AbstractFunction1<Object, A> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory$$anonfun$tabulate$1 $outer;
    private final int i1$1;

    public GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1(GenTraversableFactory$$anonfun$tabulate$1 genTraversableFactory$$anonfun$tabulate$1, int i) {
        Objects.requireNonNull(genTraversableFactory$$anonfun$tabulate$1);
        this.$outer = genTraversableFactory$$anonfun$tabulate$1;
        this.i1$1 = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [A, java.lang.Object] */
    public final A apply(int i) {
        return this.$outer.f$4.apply(BoxesRunTime.boxToInteger(this.i1$1), BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }
}
