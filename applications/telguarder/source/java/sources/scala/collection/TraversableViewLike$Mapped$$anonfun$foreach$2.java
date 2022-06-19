package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Mapped$$anonfun$foreach$2.class */
public final class TraversableViewLike$Mapped$$anonfun$foreach$2 extends AbstractFunction1<A, U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike.Mapped $outer;
    private final Function1 f$3;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$Mapped$$anonfun$foreach$2(TraversableViewLike.Mapped mapped, TraversableViewLike<A, Coll, This>.Mapped<B> mapped2) {
        Objects.requireNonNull(mapped);
        this.$outer = mapped;
        this.f$3 = mapped2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [U, java.lang.Object] */
    @Override // scala.Function1
    public final U apply(A a) {
        return this.f$3.apply(this.$outer.mapping().apply(a));
    }
}
