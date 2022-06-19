package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.immutable.ParMap;
import scala.collection.parallel.immutable.ParMap$;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$toMap$1.class */
public final class ParIterableLike$$anonfun$toMap$1 extends AbstractFunction0<Combiner<Tuple2<K, V>, ParMap<K, V>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$toMap$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    @Override // scala.Function0
    public final Combiner<Tuple2<K, V>, ParMap<K, V>> apply() {
        return ParMap$.MODULE$.newCombiner();
    }
}
