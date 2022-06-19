package scala.collection.parallel;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.collection.generic.DefaultSignalling;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$corresponds$2.class */
public final class ParSeqLike$$anonfun$corresponds$2 extends AbstractFunction1<ParSeq<S>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final Function2 p$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$corresponds$2(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.p$1 = parSeqLike2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((ParSeq) obj));
    }

    public final boolean apply(ParSeq<S> parSeq) {
        boolean z;
        DefaultSignalling defaultSignalling = new DefaultSignalling(this) { // from class: scala.collection.parallel.ParSeqLike$$anonfun$corresponds$2$$anon$9
        };
        if (this.$outer.length() == parSeq.length()) {
            TaskSupport tasksupport = this.$outer.tasksupport();
            ParSeqLike parSeqLike = this.$outer;
            if (BoxesRunTime.unboxToBoolean(tasksupport.executeAndWaitResult(new ParSeqLike.Corresponds(parSeqLike, this.p$1, (SeqSplitter) parSeqLike.delegatedSignalling2ops(parSeqLike.splitter()).assign(defaultSignalling), parSeq.splitter())))) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
