package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$11.class */
public final class ParIterableLike$$anonfun$11 extends AbstractFunction2<Repr, Repr, Tuple2<Repr, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$11(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    public final Tuple2 apply(ParIterable parIterable, ParIterable parIterable2) {
        return new Tuple2(parIterable, parIterable2);
    }
}
