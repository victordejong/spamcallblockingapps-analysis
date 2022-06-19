package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$filterImpl$1.class */
public final class TraversableLike$$anonfun$filterImpl$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$3;
    private final boolean isFlipped$1;
    private final Function1 p$1;

    public TraversableLike$$anonfun$filterImpl$1(TraversableLike traversableLike, Function1 function1, boolean z, Builder builder) {
        this.p$1 = function1;
        this.isFlipped$1 = z;
        this.b$3 = builder;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        return BoxesRunTime.unboxToBoolean(this.p$1.apply(a)) != this.isFlipped$1 ? this.b$3.$plus$eq((Builder) a) : BoxedUnit.UNIT;
    }
}
