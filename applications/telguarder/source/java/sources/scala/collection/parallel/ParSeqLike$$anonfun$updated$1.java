package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$updated$1.class */
public final class ParSeqLike$$anonfun$updated$1 extends AbstractFunction0<Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final CanBuildFrom bf$3;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$updated$1(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.bf$3 = parSeqLike2;
    }

    @Override // scala.Function0
    public final Combiner<U, That> apply() {
        ParSeqLike parSeqLike = this.$outer;
        return parSeqLike.builder2ops(this.bf$3.apply(parSeqLike.repr())).asCombiner();
    }
}
