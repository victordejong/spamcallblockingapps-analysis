package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$DefaultKeySet$$anonfun$foreach$1.class */
public final class ParMapLike$DefaultKeySet$$anonfun$foreach$1 extends AbstractFunction1<Tuple2<K, V>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParMapLike$DefaultKeySet$$anonfun$foreach$1(ParMapLike<K, V, Repr, Sequential>.DefaultKeySet defaultKeySet) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<K, V> tuple2) {
        return tuple2 != 0;
    }
}
