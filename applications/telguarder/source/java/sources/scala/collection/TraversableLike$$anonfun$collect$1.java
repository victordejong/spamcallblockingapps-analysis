package scala.collection;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$collect$1.class */
public final class TraversableLike$$anonfun$collect$1 extends AbstractFunction1<B, Builder<B, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$4;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableLike$$anonfun$collect$1(TraversableLike traversableLike, TraversableLike<A, Repr> traversableLike2) {
        this.b$4 = traversableLike2;
    }

    @Override // scala.Function1
    public final Builder<B, That> apply(B b) {
        return this.b$4.$plus$eq((Builder) b);
    }
}
