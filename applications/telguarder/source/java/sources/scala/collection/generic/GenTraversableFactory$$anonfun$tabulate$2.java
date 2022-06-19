package scala.collection.generic;

import java.util.Objects;
import scala.Function3;
import scala.Serializable;
import scala.collection.GenTraversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2.class */
public final class GenTraversableFactory$$anonfun$tabulate$2 extends AbstractFunction1<Object, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory $outer;
    public final Function3 f$3;
    private final int n2$7;
    private final int n3$6;

    public GenTraversableFactory$$anonfun$tabulate$2(GenTraversableFactory genTraversableFactory, int i, int i2, Function3 function3) {
        Objects.requireNonNull(genTraversableFactory);
        this.$outer = genTraversableFactory;
        this.n2$7 = i;
        this.n3$6 = i2;
        this.f$3 = function3;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final GenTraversable apply(int i) {
        return this.$outer.tabulate(this.n2$7, this.n3$6, new GenTraversableFactory$$anonfun$tabulate$2$$anonfun$apply$2(this, i));
    }
}
