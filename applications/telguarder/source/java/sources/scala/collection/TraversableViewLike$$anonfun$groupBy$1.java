package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$groupBy$1.class */
public final class TraversableViewLike$$anonfun$groupBy$1 extends AbstractFunction1<Seq<A>, This> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike $outer;

    public TraversableViewLike$$anonfun$groupBy$1(TraversableViewLike<A, Coll, This> traversableViewLike) {
        Objects.requireNonNull(traversableViewLike);
        this.$outer = traversableViewLike;
    }

    public final TraversableView apply(Seq seq) {
        TraversableViewLike traversableViewLike = this.$outer;
        return TraversableViewLike.Cclass.scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newForced(new TraversableViewLike$$anonfun$groupBy$1$$anonfun$apply$2(this, seq)));
    }
}
