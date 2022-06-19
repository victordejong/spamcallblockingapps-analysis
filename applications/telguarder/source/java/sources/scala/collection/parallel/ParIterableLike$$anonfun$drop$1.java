package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$drop$1.class */
public final class ParIterableLike$$anonfun$drop$1 extends AbstractFunction1<Combiner<T, Repr>, Repr> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$drop$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    public final ParIterable apply(Combiner combiner) {
        return (ParIterable) combiner.resultWithTaskSupport();
    }
}
