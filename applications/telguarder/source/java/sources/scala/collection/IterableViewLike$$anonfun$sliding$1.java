package scala.collection;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anonfun$sliding$1.class */
public final class IterableViewLike$$anonfun$sliding$1 extends AbstractFunction1<Seq<A>, This> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ IterableViewLike $outer;

    public IterableViewLike$$anonfun$sliding$1(IterableViewLike<A, Coll, This> iterableViewLike) {
        Objects.requireNonNull(iterableViewLike);
        this.$outer = iterableViewLike;
    }

    public final IterableView apply(Seq seq) {
        return this.$outer.newForced((Function0) new IterableViewLike$$anonfun$sliding$1$$anonfun$apply$2(this, seq));
    }
}
