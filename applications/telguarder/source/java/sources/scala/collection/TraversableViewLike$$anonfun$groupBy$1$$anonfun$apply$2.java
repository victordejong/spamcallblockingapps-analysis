package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$groupBy$1$$anonfun$apply$2.class */
public final class TraversableViewLike$$anonfun$groupBy$1$$anonfun$apply$2 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq xs$1;

    public TraversableViewLike$$anonfun$groupBy$1$$anonfun$apply$2(TraversableViewLike$$anonfun$groupBy$1 traversableViewLike$$anonfun$groupBy$1, Seq seq) {
        this.xs$1 = seq;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return this.xs$1;
    }
}
