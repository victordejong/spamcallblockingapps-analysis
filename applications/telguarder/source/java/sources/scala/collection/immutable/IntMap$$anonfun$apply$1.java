package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$$anonfun$apply$1.class */
public final class IntMap$$anonfun$apply$1 extends AbstractFunction2<IntMap<T>, Tuple2<Object, T>, IntMap<T>> implements Serializable {
    public static final long serialVersionUID = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public final IntMap<T> apply(IntMap<T> intMap, Tuple2<Object, T> tuple2) {
        return intMap.updated(tuple2._1$mcI$sp(), (int) tuple2.mo268_2());
    }
}
