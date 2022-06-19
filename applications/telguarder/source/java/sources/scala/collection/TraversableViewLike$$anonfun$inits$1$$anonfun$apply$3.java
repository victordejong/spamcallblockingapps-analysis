package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$inits$1$$anonfun$apply$3.class */
public final class TraversableViewLike$$anonfun$inits$1$$anonfun$apply$3 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq as$1;

    public TraversableViewLike$$anonfun$inits$1$$anonfun$apply$3(TraversableViewLike$$anonfun$inits$1 traversableViewLike$$anonfun$inits$1, Seq seq) {
        this.as$1 = seq;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return this.as$1;
    }
}
