package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$1.class */
public final class Repetition$ParIterator$$anonfun$psplit$1 extends AbstractFunction1<Tuple2<Object, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public Repetition$ParIterator$$anonfun$psplit$1(Repetition<T>.ParIterator parIterator) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<Object, Object> tuple2) {
        return tuple2 != null;
    }
}
