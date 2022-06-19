package scala.collection;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anonfun$sortWith$1.class */
public final class SeqViewLike$$anonfun$sortWith$1 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqViewLike $outer;
    private final Function2 lt$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqViewLike$$anonfun$sortWith$1(SeqViewLike seqViewLike, SeqViewLike<A, Coll, This> seqViewLike2) {
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.lt$1 = seqViewLike2;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return (Seq) this.$outer.thisSeq().sortWith(this.lt$1);
    }
}
