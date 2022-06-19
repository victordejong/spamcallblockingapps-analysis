package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$collect$1.class */
public final class ParIterableLike$$anonfun$collect$1 extends AbstractFunction0<Combiner<S, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike $outer;
    private final CanBuildFrom bf$3;

    /* JADX WARN: Multi-variable type inference failed */
    public ParIterableLike$$anonfun$collect$1(ParIterableLike parIterableLike, ParIterableLike<T, Repr, Sequential> parIterableLike2) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.bf$3 = parIterableLike2;
    }

    @Override // scala.Function0
    public final Combiner<S, That> apply() {
        ParIterableLike parIterableLike = this.$outer;
        return parIterableLike.builder2ops(this.bf$3.apply(parIterableLike.repr())).asCombiner();
    }
}
