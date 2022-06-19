package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.generic.DefaultSignalling;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$sameElements$2.class */
public final class ParSeqLike$$anonfun$sameElements$2 extends AbstractFunction1<ParSeq<U>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;

    public ParSeqLike$$anonfun$sameElements$2(ParSeqLike<T, Repr, Sequential> parSeqLike) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((ParSeq) obj));
    }

    public final boolean apply(ParSeq<U> parSeq) {
        boolean z;
        DefaultSignalling defaultSignalling = new DefaultSignalling(this) { // from class: scala.collection.parallel.ParSeqLike$$anonfun$sameElements$2$$anon$7
        };
        if (this.$outer.length() == parSeq.length()) {
            TaskSupport tasksupport = this.$outer.tasksupport();
            ParSeqLike parSeqLike = this.$outer;
            if (BoxesRunTime.unboxToBoolean(tasksupport.executeAndWaitResult(new ParSeqLike.SameElements(parSeqLike, (SeqSplitter) parSeqLike.delegatedSignalling2ops(parSeqLike.splitter()).assign(defaultSignalling), parSeq.splitter())))) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
