package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anonfun$union$1.class */
public final class SeqViewLike$$anonfun$union$1 extends AbstractFunction0<Seq<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqViewLike $outer;
    private final GenSeq that$4;

    public SeqViewLike$$anonfun$union$1(SeqViewLike seqViewLike, SeqViewLike<A, Coll, This> seqViewLike2) {
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.that$4 = seqViewLike2;
    }

    @Override // scala.Function0
    public final Seq<B> apply() {
        return (Seq) this.$outer.thisSeq().union(this.that$4, Seq$.MODULE$.canBuildFrom());
    }
}
