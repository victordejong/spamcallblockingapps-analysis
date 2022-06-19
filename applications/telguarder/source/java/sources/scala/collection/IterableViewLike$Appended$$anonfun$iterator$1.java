package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.IterableViewLike;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Appended$$anonfun$iterator$1.class */
public final class IterableViewLike$Appended$$anonfun$iterator$1 extends AbstractFunction0<GenTraversable<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ IterableViewLike.Appended $outer;

    public IterableViewLike$Appended$$anonfun$iterator$1(IterableViewLike<A, Coll, This>.Appended<B> appended) {
        Objects.requireNonNull(appended);
        this.$outer = appended;
    }

    @Override // scala.Function0
    public final GenTraversable<B> apply() {
        return this.$outer.rest();
    }
}
