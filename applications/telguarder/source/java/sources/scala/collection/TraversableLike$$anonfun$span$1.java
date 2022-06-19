package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$span$1.class */
public final class TraversableLike$$anonfun$span$1 extends AbstractFunction1<A, Builder<A, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder l$2;
    private final Function1 p$8;
    private final Builder r$2;
    private final BooleanRef toLeft$1;

    public TraversableLike$$anonfun$span$1(TraversableLike traversableLike, Builder builder, Builder builder2, BooleanRef booleanRef, Function1 function1) {
        this.l$2 = builder;
        this.r$2 = builder2;
        this.toLeft$1 = booleanRef;
        this.p$8 = function1;
    }

    @Override // scala.Function1
    public final Builder<A, Repr> apply(A a) {
        BooleanRef booleanRef = this.toLeft$1;
        booleanRef.elem = booleanRef.elem && BoxesRunTime.unboxToBoolean(this.p$8.apply(a));
        return (this.toLeft$1.elem ? this.l$2 : this.r$2).$plus$eq((Builder) a);
    }
}
