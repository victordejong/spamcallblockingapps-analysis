package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$reverseMap$1.class */
public final class ParSeqLike$$anonfun$reverseMap$1 extends AbstractFunction0<Combiner<S, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final CanBuildFrom bf$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$reverseMap$1(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.bf$1 = parSeqLike2;
    }

    @Override // scala.Function0
    public final Combiner<S, That> apply() {
        ParSeqLike parSeqLike = this.$outer;
        return parSeqLike.builder2ops(this.bf$1.apply(parSeqLike.repr())).asCombiner();
    }
}
