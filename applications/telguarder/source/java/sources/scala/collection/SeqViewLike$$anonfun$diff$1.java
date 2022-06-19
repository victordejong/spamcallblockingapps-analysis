package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anonfun$diff$1.class */
public final class SeqViewLike$$anonfun$diff$1 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqViewLike $outer;
    private final GenSeq that$5;

    public SeqViewLike$$anonfun$diff$1(SeqViewLike seqViewLike, SeqViewLike<A, Coll, This> seqViewLike2) {
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.that$5 = seqViewLike2;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return (Seq) this.$outer.thisSeq().diff(this.that$5);
    }
}
