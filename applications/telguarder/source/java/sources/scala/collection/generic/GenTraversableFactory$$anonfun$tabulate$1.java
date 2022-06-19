package scala.collection.generic;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.collection.GenTraversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1.class */
public final class GenTraversableFactory$$anonfun$tabulate$1 extends AbstractFunction1<Object, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory $outer;
    public final Function2 f$4;
    private final int n2$8;

    public GenTraversableFactory$$anonfun$tabulate$1(GenTraversableFactory genTraversableFactory, int i, Function2 function2) {
        Objects.requireNonNull(genTraversableFactory);
        this.$outer = genTraversableFactory;
        this.n2$8 = i;
        this.f$4 = function2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final GenTraversable apply(int i) {
        return this.$outer.tabulate(this.n2$8, new GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1(this, i));
    }
}
