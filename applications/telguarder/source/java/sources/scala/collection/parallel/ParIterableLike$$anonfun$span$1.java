package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$span$1.class */
public final class ParIterableLike$$anonfun$span$1 extends AbstractFunction1<Tuple2<Combiner<T, Repr>, Combiner<T, Repr>>, Tuple2<Repr, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$span$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    public final Tuple2<Repr, Repr> apply(Tuple2<Combiner<T, Repr>, Combiner<T, Repr>> tuple2) {
        return new Tuple2<>(((Combiner) tuple2.mo269_1()).resultWithTaskSupport(), ((Combiner) tuple2.mo268_2()).resultWithTaskSupport());
    }
}
