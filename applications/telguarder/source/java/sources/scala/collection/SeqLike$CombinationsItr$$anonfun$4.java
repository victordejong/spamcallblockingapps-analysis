package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.SeqLike;
import scala.collection.mutable.HashMap;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr$$anonfun$4.class */
public final class SeqLike$CombinationsItr$$anonfun$4 extends AbstractFunction1<A, Tuple2<A, Object>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final HashMap m$2;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqLike$CombinationsItr$$anonfun$4(SeqLike.CombinationsItr combinationsItr, SeqLike<A, Repr>.CombinationsItr combinationsItr2) {
        this.m$2 = combinationsItr2;
    }

    @Override // scala.Function1
    public final Tuple2<A, Object> apply(A a) {
        return new Tuple2<>(a, this.m$2.getOrElseUpdate(a, new SeqLike$CombinationsItr$$anonfun$4$$anonfun$apply$2(this)));
    }
}
