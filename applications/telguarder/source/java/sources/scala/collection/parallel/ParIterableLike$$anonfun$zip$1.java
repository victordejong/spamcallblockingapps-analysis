package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$zip$1.class */
public final class ParIterableLike$$anonfun$zip$1 extends AbstractFunction0<Combiner<Tuple2<U, S>, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike $outer;
    private final CanBuildFrom bf$7;

    /* JADX WARN: Multi-variable type inference failed */
    public ParIterableLike$$anonfun$zip$1(ParIterableLike parIterableLike, ParIterableLike<T, Repr, Sequential> parIterableLike2) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.bf$7 = parIterableLike2;
    }

    @Override // scala.Function0
    public final Combiner<Tuple2<U, S>, That> apply() {
        ParIterableLike parIterableLike = this.$outer;
        return parIterableLike.builder2ops(this.bf$7.apply(parIterableLike.repr())).asCombiner();
    }
}
