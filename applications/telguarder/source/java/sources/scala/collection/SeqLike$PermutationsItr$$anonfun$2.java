package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.SeqLike;
import scala.collection.mutable.HashMap;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$PermutationsItr$$anonfun$2.class */
public final class SeqLike$PermutationsItr$$anonfun$2 extends AbstractFunction1<A, Tuple2<A, Object>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final HashMap m$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqLike$PermutationsItr$$anonfun$2(SeqLike.PermutationsItr permutationsItr, SeqLike<A, Repr>.PermutationsItr permutationsItr2) {
        this.m$1 = permutationsItr2;
    }

    @Override // scala.Function1
    public final Tuple2<A, Object> apply(A a) {
        return new Tuple2<>(a, this.m$1.getOrElseUpdate(a, new SeqLike$PermutationsItr$$anonfun$2$$anonfun$apply$1(this)));
    }
}
