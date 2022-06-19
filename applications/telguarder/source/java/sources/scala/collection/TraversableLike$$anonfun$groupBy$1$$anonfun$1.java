package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$groupBy$1$$anonfun$1.class */
public final class TraversableLike$$anonfun$groupBy$1$$anonfun$1 extends AbstractFunction0<Builder<A, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike$$anonfun$groupBy$1 $outer;

    public TraversableLike$$anonfun$groupBy$1$$anonfun$1(TraversableLike$$anonfun$groupBy$1 traversableLike$$anonfun$groupBy$1) {
        Objects.requireNonNull(traversableLike$$anonfun$groupBy$1);
        this.$outer = traversableLike$$anonfun$groupBy$1;
    }

    @Override // scala.Function0
    public final Builder<A, Repr> apply() {
        return this.$outer.$outer.newBuilder();
    }
}
