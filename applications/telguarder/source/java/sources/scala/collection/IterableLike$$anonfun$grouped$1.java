package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableLike$$anonfun$grouped$1.class */
public final class IterableLike$$anonfun$grouped$1 extends AbstractFunction1<Seq<A>, Repr> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ IterableLike $outer;

    public IterableLike$$anonfun$grouped$1(IterableLike<A, Repr> iterableLike) {
        Objects.requireNonNull(iterableLike);
        this.$outer = iterableLike;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [Repr, java.lang.Object] */
    public final Repr apply(Seq<A> seq) {
        Builder<A, Repr> newBuilder = this.$outer.newBuilder();
        newBuilder.$plus$plus$eq(seq);
        return newBuilder.result();
    }
}
