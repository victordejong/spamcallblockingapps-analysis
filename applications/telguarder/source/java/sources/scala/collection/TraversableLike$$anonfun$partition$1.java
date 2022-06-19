package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$partition$1.class */
public final class TraversableLike$$anonfun$partition$1 extends AbstractFunction1<A, Builder<A, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder l$1;
    private final Function1 p$2;
    private final Builder r$1;

    public TraversableLike$$anonfun$partition$1(TraversableLike traversableLike, Builder builder, Builder builder2, Function1 function1) {
        this.l$1 = builder;
        this.r$1 = builder2;
        this.p$2 = function1;
    }

    @Override // scala.Function1
    public final Builder<A, Repr> apply(A a) {
        return (BoxesRunTime.unboxToBoolean(this.p$2.apply(a)) ? this.l$1 : this.r$1).$plus$eq((Builder) a);
    }
}
