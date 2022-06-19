package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$reverse$1.class */
public final class ParSeqLike$$anonfun$reverse$1 extends AbstractFunction0<Combiner<T, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;

    public ParSeqLike$$anonfun$reverse$1(ParSeqLike<T, Repr, Sequential> parSeqLike) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
    }

    @Override // scala.Function0
    public final Combiner<T, Repr> apply() {
        return this.$outer.newCombiner();
    }
}
