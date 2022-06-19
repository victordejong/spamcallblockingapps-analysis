package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$isEmpty$1$$anonfun$apply$mcV$sp$1.class */
public final class TraversableLike$$anonfun$isEmpty$1$$anonfun$apply$mcV$sp$1 extends AbstractFunction1<A, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike$$anonfun$isEmpty$1 $outer;

    public TraversableLike$$anonfun$isEmpty$1$$anonfun$apply$mcV$sp$1(TraversableLike$$anonfun$isEmpty$1 traversableLike$$anonfun$isEmpty$1) {
        Objects.requireNonNull(traversableLike$$anonfun$isEmpty$1);
        this.$outer = traversableLike$$anonfun$isEmpty$1;
    }

    @Override // scala.Function1
    public final Nothing$ apply(A a) {
        this.$outer.result$1.elem = false;
        return Traversable$.MODULE$.breaks().m6462break();
    }
}
