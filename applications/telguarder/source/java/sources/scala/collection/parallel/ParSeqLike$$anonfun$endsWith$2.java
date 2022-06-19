package scala.collection.parallel;

import java.util.Objects;
import scala.Predef$;
import scala.Serializable;
import scala.collection.GenSeq;
import scala.collection.generic.DefaultSignalling;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$endsWith$2.class */
public final class ParSeqLike$$anonfun$endsWith$2 extends AbstractFunction1<ParSeq<S>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final GenSeq that$4;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$endsWith$2(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.that$4 = parSeqLike2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((ParSeq) obj));
    }

    public final boolean apply(ParSeq<S> parSeq) {
        boolean z = false;
        if (this.that$4.length() == 0) {
            z = true;
        } else if (this.that$4.length() <= this.$outer.length()) {
            DefaultSignalling defaultSignalling = new DefaultSignalling(this) { // from class: scala.collection.parallel.ParSeqLike$$anonfun$endsWith$2$$anon$8
            };
            int length = this.that$4.length();
            TaskSupport tasksupport = this.$outer.tasksupport();
            ParSeqLike parSeqLike = this.$outer;
            z = BoxesRunTime.unboxToBoolean(tasksupport.executeAndWaitResult(new ParSeqLike.SameElements(parSeqLike, (SeqSplitter) parSeqLike.delegatedSignalling2ops((DelegatedSignalling) parSeqLike.splitter().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{this.$outer.length() - length, length})).apply(1)).assign(defaultSignalling), parSeq.splitter())));
        }
        return z;
    }
}
