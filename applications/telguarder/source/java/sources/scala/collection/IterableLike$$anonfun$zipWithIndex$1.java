package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableLike$$anonfun$zipWithIndex$1.class */
public final class IterableLike$$anonfun$zipWithIndex$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;
    private final IntRef i$1;

    public IterableLike$$anonfun$zipWithIndex$1(IterableLike iterableLike, Builder builder, IntRef intRef) {
        this.b$1 = builder;
        this.i$1 = intRef;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        this.b$1.$plus$eq((Builder) new Tuple2(a, BoxesRunTime.boxToInteger(this.i$1.elem)));
        this.i$1.elem++;
    }
}
