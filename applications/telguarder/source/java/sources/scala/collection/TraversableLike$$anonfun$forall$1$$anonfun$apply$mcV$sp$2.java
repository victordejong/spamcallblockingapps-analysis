package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2.class */
public final class TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike$$anonfun$forall$1 $outer;

    public TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2(TraversableLike$$anonfun$forall$1 traversableLike$$anonfun$forall$1) {
        Objects.requireNonNull(traversableLike$$anonfun$forall$1);
        this.$outer = traversableLike$$anonfun$forall$1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        if (BoxesRunTime.unboxToBoolean(this.$outer.p$3.apply(a))) {
            return;
        }
        this.$outer.result$2.elem = false;
        throw Traversable$.MODULE$.breaks().m6462break();
    }
}
