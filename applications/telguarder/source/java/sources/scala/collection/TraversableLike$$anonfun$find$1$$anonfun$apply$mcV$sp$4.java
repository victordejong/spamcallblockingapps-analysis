package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$find$1$$anonfun$apply$mcV$sp$4.class */
public final class TraversableLike$$anonfun$find$1$$anonfun$apply$mcV$sp$4 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike$$anonfun$find$1 $outer;

    public TraversableLike$$anonfun$find$1$$anonfun$apply$mcV$sp$4(TraversableLike$$anonfun$find$1 traversableLike$$anonfun$find$1) {
        Objects.requireNonNull(traversableLike$$anonfun$find$1);
        this.$outer = traversableLike$$anonfun$find$1;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [scala.Some, T] */
    @Override // scala.Function1
    public final void apply(A a) {
        if (!BoxesRunTime.unboxToBoolean(this.$outer.p$5.apply(a))) {
            return;
        }
        this.$outer.result$4.elem = new Some(a);
        throw Traversable$.MODULE$.breaks().m6462break();
    }
}
