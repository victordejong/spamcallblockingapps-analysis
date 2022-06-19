package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anonfun$distinct$1.class */
public final class SeqViewLike$$anonfun$distinct$1 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqViewLike $outer;

    public SeqViewLike$$anonfun$distinct$1(SeqViewLike<A, Coll, This> seqViewLike) {
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return (Seq) this.$outer.thisSeq().distinct();
    }
}
