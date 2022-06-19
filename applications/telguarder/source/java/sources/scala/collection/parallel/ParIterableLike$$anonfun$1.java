package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.generic.CanCombineFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$1.class */
public final class ParIterableLike$$anonfun$1 extends AbstractFunction0<Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike $outer;
    private final CanCombineFrom pbf$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParIterableLike$$anonfun$1(ParIterableLike parIterableLike, ParIterableLike<T, Repr, Sequential> parIterableLike2) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.pbf$1 = parIterableLike2;
    }

    @Override // scala.Function0
    public final Combiner<U, That> apply() {
        return this.pbf$1.apply((CanCombineFrom) this.$outer.repr());
    }
}
