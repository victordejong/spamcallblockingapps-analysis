package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$exists$1$$anonfun$apply$mcV$sp$3.class */
public final class TraversableLike$$anonfun$exists$1$$anonfun$apply$mcV$sp$3 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike$$anonfun$exists$1 $outer;

    public TraversableLike$$anonfun$exists$1$$anonfun$apply$mcV$sp$3(TraversableLike$$anonfun$exists$1 traversableLike$$anonfun$exists$1) {
        Objects.requireNonNull(traversableLike$$anonfun$exists$1);
        this.$outer = traversableLike$$anonfun$exists$1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        if (!BoxesRunTime.unboxToBoolean(this.$outer.p$4.apply(a))) {
            return;
        }
        this.$outer.result$3.elem = true;
        throw Traversable$.MODULE$.breaks().m6462break();
    }
}
