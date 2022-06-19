package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$2$$anonfun$foreach$6.class */
public final class ParMapLike$$anon$2$$anonfun$foreach$6 extends AbstractFunction1<Tuple2<K, V>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParMapLike$$anon$2$$anonfun$foreach$6(ParMapLike$$anon$2 parMapLike$$anon$2) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<K, V> tuple2) {
        return tuple2 != 0;
    }
}
