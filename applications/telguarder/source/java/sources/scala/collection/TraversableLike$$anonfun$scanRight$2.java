package scala.collection;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$scanRight$2.class */
public final class TraversableLike$$anonfun$scanRight$2 extends AbstractFunction1<B, Builder<B, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Builder b$7;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableLike$$anonfun$scanRight$2(TraversableLike traversableLike, TraversableLike<A, Repr> traversableLike2) {
        this.b$7 = traversableLike2;
    }

    @Override // scala.Function1
    public final Builder<B, That> apply(B b) {
        return this.b$7.$plus$eq((Builder) b);
    }
}
