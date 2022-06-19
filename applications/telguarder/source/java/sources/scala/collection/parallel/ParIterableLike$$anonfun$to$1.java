package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$to$1.class */
public final class ParIterableLike$$anonfun$to$1 extends AbstractFunction0<Combiner<T, Col>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike $outer;
    private final CanBuildFrom cbf$2;

    /* JADX WARN: Multi-variable type inference failed */
    public ParIterableLike$$anonfun$to$1(ParIterableLike parIterableLike, ParIterableLike<T, Repr, Sequential> parIterableLike2) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.cbf$2 = parIterableLike2;
    }

    @Override // scala.Function0
    public final Combiner<T, Col> apply() {
        return this.$outer.builder2ops(this.cbf$2.apply()).asCombiner();
    }
}
