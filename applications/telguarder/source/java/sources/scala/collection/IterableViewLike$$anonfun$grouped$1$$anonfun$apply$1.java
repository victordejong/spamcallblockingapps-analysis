package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anonfun$grouped$1$$anonfun$apply$1.class */
public final class IterableViewLike$$anonfun$grouped$1$$anonfun$apply$1 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq x$1;

    public IterableViewLike$$anonfun$grouped$1$$anonfun$apply$1(IterableViewLike$$anonfun$grouped$1 iterableViewLike$$anonfun$grouped$1, Seq seq) {
        this.x$1 = seq;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return this.x$1;
    }
}
