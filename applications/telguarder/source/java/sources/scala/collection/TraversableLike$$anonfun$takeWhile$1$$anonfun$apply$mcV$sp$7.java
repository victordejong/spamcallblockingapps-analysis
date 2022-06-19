package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7.class */
public final class TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7 extends AbstractFunction1<A, Builder<A, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike$$anonfun$takeWhile$1 $outer;

    public TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7(TraversableLike$$anonfun$takeWhile$1 traversableLike$$anonfun$takeWhile$1) {
        Objects.requireNonNull(traversableLike$$anonfun$takeWhile$1);
        this.$outer = traversableLike$$anonfun$takeWhile$1;
    }

    @Override // scala.Function1
    public final Builder<A, Repr> apply(A a) {
        if (BoxesRunTime.unboxToBoolean(this.$outer.p$6.apply(a))) {
            return this.$outer.b$10.$plus$eq((Builder) a);
        }
        throw Traversable$.MODULE$.breaks().m6462break();
    }
}
