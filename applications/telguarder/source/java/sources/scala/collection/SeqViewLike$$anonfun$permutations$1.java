package scala.collection;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anonfun$permutations$1.class */
public final class SeqViewLike$$anonfun$permutations$1 extends AbstractFunction1<Seq<A>, This> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqViewLike $outer;

    public SeqViewLike$$anonfun$permutations$1(SeqViewLike<A, Coll, This> seqViewLike) {
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
    }

    public final SeqView apply(Seq seq) {
        return this.$outer.newForced((Function0) new SeqViewLike$$anonfun$permutations$1$$anonfun$apply$2(this, seq));
    }
}
