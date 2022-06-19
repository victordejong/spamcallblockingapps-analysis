package scala.collection.parallel;

import scala.Serializable;
import scala.collection.parallel.immutable.ParSet;
import scala.collection.parallel.immutable.ParSet$;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$toSet$1.class */
public final class ParIterableLike$$anonfun$toSet$1 extends AbstractFunction0<Combiner<U, ParSet<U>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$toSet$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    @Override // scala.Function0
    public final Combiner<U, ParSet<U>> apply() {
        return ParSet$.MODULE$.newCombiner();
    }
}
