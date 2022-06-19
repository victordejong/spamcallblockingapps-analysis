package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$tails$1$$anonfun$apply$4.class */
public final class TraversableViewLike$$anonfun$tails$1$$anonfun$apply$4 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq as$2;

    public TraversableViewLike$$anonfun$tails$1$$anonfun$apply$4(TraversableViewLike$$anonfun$tails$1 traversableViewLike$$anonfun$tails$1, Seq seq) {
        this.as$2 = seq;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return this.as$2;
    }
}
