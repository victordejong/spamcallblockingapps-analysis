package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr$$anonfun$5.class */
public final class SeqLike$CombinationsItr$$anonfun$5 extends AbstractFunction1<Tuple2<A, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public SeqLike$CombinationsItr$$anonfun$5(SeqLike<A, Repr>.CombinationsItr combinationsItr) {
    }

    public final int apply(Tuple2<A, Object> tuple2) {
        return tuple2._2$mcI$sp();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply((Tuple2) obj));
    }
}
