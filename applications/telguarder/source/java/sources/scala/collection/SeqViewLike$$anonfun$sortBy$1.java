package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.math.Ordering;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anonfun$sortBy$1.class */
public final class SeqViewLike$$anonfun$sortBy$1 extends AbstractFunction0<Seq<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqViewLike $outer;
    private final Function1 f$3;
    private final Ordering ord$2;

    public SeqViewLike$$anonfun$sortBy$1(SeqViewLike seqViewLike, Function1 function1, Ordering ordering) {
        Objects.requireNonNull(seqViewLike);
        this.$outer = seqViewLike;
        this.f$3 = function1;
        this.ord$2 = ordering;
    }

    @Override // scala.Function0
    public final Seq<A> apply() {
        return (Seq) this.$outer.thisSeq().sortBy(this.f$3, this.ord$2);
    }
}
