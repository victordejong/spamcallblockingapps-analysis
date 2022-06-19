package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.SeqViewLike;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Prepended$$anonfun$iterator$1.class */
public final class SeqViewLike$Prepended$$anonfun$iterator$1 extends AbstractFunction0<Iterator<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqViewLike.Prepended $outer;

    public SeqViewLike$Prepended$$anonfun$iterator$1(SeqViewLike<A, Coll, This>.Prepended<B> prepended) {
        Objects.requireNonNull(prepended);
        this.$outer = prepended;
    }

    @Override // scala.Function0
    public final Iterator<A> apply() {
        return this.$outer.scala$collection$SeqViewLike$Prepended$$$outer().iterator();
    }
}
