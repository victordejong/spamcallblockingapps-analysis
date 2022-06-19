package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$iterateUntilEmpty$2.class */
public final class TraversableLike$$anonfun$iterateUntilEmpty$2 extends AbstractFunction1<Traversable<A>, Repr> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike $outer;

    public TraversableLike$$anonfun$iterateUntilEmpty$2(TraversableLike traversableLike) {
        Objects.requireNonNull(traversableLike);
        this.$outer = traversableLike;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [Repr, java.lang.Object] */
    public final Repr apply(Traversable<A> traversable) {
        return ((Builder) this.$outer.newBuilder().$plus$plus$eq(traversable)).result();
    }
}
