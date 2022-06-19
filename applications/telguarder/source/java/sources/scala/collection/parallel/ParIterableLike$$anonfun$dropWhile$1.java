package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$dropWhile$1.class */
public final class ParIterableLike$$anonfun$dropWhile$1 extends AbstractFunction1<Tuple2<Combiner<T, Repr>, Combiner<T, Repr>>, Repr> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$dropWhile$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    public final ParIterable apply(Tuple2 tuple2) {
        return (ParIterable) ((Combiner) tuple2.mo268_2()).resultWithTaskSupport();
    }
}
