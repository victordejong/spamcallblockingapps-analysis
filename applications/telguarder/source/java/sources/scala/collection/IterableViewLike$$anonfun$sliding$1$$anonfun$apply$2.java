package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$$anonfun$sliding$1$$anonfun$apply$2.class */
public final class IterableViewLike$$anonfun$sliding$1$$anonfun$apply$2 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq x$2;

    public IterableViewLike$$anonfun$sliding$1$$anonfun$apply$2(IterableViewLike$$anonfun$sliding$1 iterableViewLike$$anonfun$sliding$1, Seq seq) {
        this.x$2 = seq;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return this.x$2;
    }
}
