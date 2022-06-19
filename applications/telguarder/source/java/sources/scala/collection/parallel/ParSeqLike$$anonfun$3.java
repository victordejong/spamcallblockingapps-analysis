package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$3.class */
public final class ParSeqLike$$anonfun$3 extends AbstractFunction0<Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final CombinerFactory cfactory$1;
    private final ParSeq that$1;

    public ParSeqLike$$anonfun$3(ParSeqLike parSeqLike, ParSeq parSeq, CombinerFactory combinerFactory) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.that$1 = parSeq;
        this.cfactory$1 = combinerFactory;
    }

    @Override // scala.Function0
    public final Combiner<U, That> apply() {
        ParSeq parSeq = this.that$1;
        return (Combiner) this.$outer.tasksupport().executeAndWaitResult(new ParIterableLike.Copy(parSeq, this.cfactory$1, parSeq.splitter()));
    }
}
