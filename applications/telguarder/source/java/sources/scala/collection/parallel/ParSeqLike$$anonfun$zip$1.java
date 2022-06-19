package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$zip$1.class */
public final class ParSeqLike$$anonfun$zip$1 extends AbstractFunction0<Combiner<Tuple2<U, S>, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final CanBuildFrom bf$4;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$zip$1(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.bf$4 = parSeqLike2;
    }

    @Override // scala.Function0
    public final Combiner<Tuple2<U, S>, That> apply() {
        ParSeqLike parSeqLike = this.$outer;
        return parSeqLike.builder2ops(this.bf$4.apply(parSeqLike.repr())).asCombiner();
    }
}
