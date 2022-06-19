package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$toSeq$1.class */
public final class ParIterableLike$$anonfun$toSeq$1 extends AbstractFunction0<Combiner<T, ParSeq<T>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$toSeq$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    @Override // scala.Function0
    public final Combiner<T, ParSeq<T>> apply() {
        return ParSeq$.MODULE$.newCombiner();
    }
}
