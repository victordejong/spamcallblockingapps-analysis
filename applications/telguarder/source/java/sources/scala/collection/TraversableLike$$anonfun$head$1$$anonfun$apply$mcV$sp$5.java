package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5.class */
public final class TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5 extends AbstractFunction1<A, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike$$anonfun$head$1 $outer;

    public TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5(TraversableLike$$anonfun$head$1 traversableLike$$anonfun$head$1) {
        Objects.requireNonNull(traversableLike$$anonfun$head$1);
        this.$outer = traversableLike$$anonfun$head$1;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, scala.collection.TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5$$anonfun$apply$1] */
    @Override // scala.Function1
    public final Nothing$ apply(A a) {
        this.$outer.result$5.elem = new C2573x56be284f(this, a);
        return Traversable$.MODULE$.breaks().m6462break();
    }
}
