package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1.class */
public final class SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1 extends AbstractFunction1<Object, Builder<A, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ SeqLike$CombinationsItr$$anonfun$next$1 $outer;
    public final int k$1;

    public SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1(SeqLike$CombinationsItr$$anonfun$next$1 seqLike$CombinationsItr$$anonfun$next$1, int i) {
        Objects.requireNonNull(seqLike$CombinationsItr$$anonfun$next$1);
        this.$outer = seqLike$CombinationsItr$$anonfun$next$1;
        this.k$1 = i;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Builder<A, Repr> apply(int i) {
        return this.$outer.buf$1.$plus$eq((Builder) this.$outer.$outer.scala$collection$SeqLike$CombinationsItr$$elms().apply(this.$outer.$outer.scala$collection$SeqLike$CombinationsItr$$offs()[this.k$1] + i));
    }
}
