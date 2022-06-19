package scala.collection.generic;

import java.util.Objects;
import scala.Function5;
import scala.Serializable;
import scala.collection.GenTraversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4.class */
public final class GenTraversableFactory$$anonfun$tabulate$4 extends AbstractFunction1<Object, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory $outer;
    public final Function5 f$1;
    private final int n2$5;
    private final int n3$4;
    private final int n4$3;
    private final int n5$2;

    public GenTraversableFactory$$anonfun$tabulate$4(GenTraversableFactory genTraversableFactory, int i, int i2, int i3, int i4, Function5 function5) {
        Objects.requireNonNull(genTraversableFactory);
        this.$outer = genTraversableFactory;
        this.n2$5 = i;
        this.n3$4 = i2;
        this.n4$3 = i3;
        this.n5$2 = i4;
        this.f$1 = function5;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final GenTraversable apply(int i) {
        return this.$outer.tabulate(this.n2$5, this.n3$4, this.n4$3, this.n5$2, new GenTraversableFactory$$anonfun$tabulate$4$$anonfun$apply$4(this, i));
    }
}
