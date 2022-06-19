package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap$$anonfun$apply$1.class */
public final class LongMap$$anonfun$apply$1 extends AbstractFunction2<LongMap<T>, Tuple2<Object, T>, LongMap<T>> implements Serializable {
    public static final long serialVersionUID = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public final LongMap<T> apply(LongMap<T> longMap, Tuple2<Object, T> tuple2) {
        return longMap.updated(tuple2._1$mcJ$sp(), (long) tuple2.mo268_2());
    }
}
