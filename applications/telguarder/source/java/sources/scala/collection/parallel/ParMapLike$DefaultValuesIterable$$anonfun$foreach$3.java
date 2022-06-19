package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$DefaultValuesIterable$$anonfun$foreach$3.class */
public final class ParMapLike$DefaultValuesIterable$$anonfun$foreach$3 extends AbstractFunction1<Tuple2<K, V>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParMapLike$DefaultValuesIterable$$anonfun$foreach$3(ParMapLike<K, V, Repr, Sequential>.DefaultValuesIterable defaultValuesIterable) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<K, V> tuple2) {
        return tuple2 != 0;
    }
}
