package scala.collection;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$splitAt$1.class */
public final class TraversableLike$$anonfun$splitAt$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final IntRef i$2;
    private final Builder l$3;
    private final int n$1;
    private final Builder r$3;

    public TraversableLike$$anonfun$splitAt$1(TraversableLike traversableLike, Builder builder, Builder builder2, IntRef intRef, int i) {
        this.l$3 = builder;
        this.r$3 = builder2;
        this.i$2 = intRef;
        this.n$1 = i;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        (this.i$2.elem < this.n$1 ? this.l$3 : this.r$3).$plus$eq((Builder) a);
        this.i$2.elem++;
    }
}
