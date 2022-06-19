package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8.class */
public final class TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike$$anonfun$copyToArray$1 $outer;

    public TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8(TraversableLike$$anonfun$copyToArray$1 traversableLike$$anonfun$copyToArray$1) {
        Objects.requireNonNull(traversableLike$$anonfun$copyToArray$1);
        this.$outer = traversableLike$$anonfun$copyToArray$1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        if (this.$outer.i$3.elem < this.$outer.end$1) {
            ScalaRunTime$.MODULE$.array_update(this.$outer.xs$1, this.$outer.i$3.elem, a);
            this.$outer.i$3.elem++;
            return;
        }
        throw Traversable$.MODULE$.breaks().m6462break();
    }
}
