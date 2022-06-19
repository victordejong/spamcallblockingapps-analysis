package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$2.class */
public final class ParIterableLike$$anonfun$2 extends AbstractFunction0<Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike $outer;
    private final CombinerFactory cfactory$1;
    private final ParIterable other$1;

    public ParIterableLike$$anonfun$2(ParIterableLike parIterableLike, ParIterable parIterable, CombinerFactory combinerFactory) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.other$1 = parIterable;
        this.cfactory$1 = combinerFactory;
    }

    @Override // scala.Function0
    public final Combiner<U, That> apply() {
        ParIterable parIterable = this.other$1;
        return (Combiner) this.$outer.tasksupport().executeAndWaitResult(new ParIterableLike.Copy(parIterable, this.cfactory$1, parIterable.splitter()));
    }
}
