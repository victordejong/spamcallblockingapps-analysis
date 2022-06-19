package scala.collection.generic;

import java.util.Objects;
import scala.Function4;
import scala.Serializable;
import scala.collection.GenTraversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3.class */
public final class GenTraversableFactory$$anonfun$tabulate$3 extends AbstractFunction1<Object, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory $outer;
    public final Function4 f$2;
    private final int n2$6;
    private final int n3$5;
    private final int n4$4;

    public GenTraversableFactory$$anonfun$tabulate$3(GenTraversableFactory genTraversableFactory, int i, int i2, int i3, Function4 function4) {
        Objects.requireNonNull(genTraversableFactory);
        this.$outer = genTraversableFactory;
        this.n2$6 = i;
        this.n3$5 = i2;
        this.n4$4 = i3;
        this.f$2 = function4;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final GenTraversable apply(int i) {
        return this.$outer.tabulate(this.n2$6, this.n3$5, this.n4$4, new GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3(this, i));
    }
}
