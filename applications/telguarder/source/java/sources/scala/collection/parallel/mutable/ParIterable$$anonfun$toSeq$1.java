package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.parallel.Combiner;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParIterable$$anonfun$toSeq$1.class */
public final class ParIterable$$anonfun$toSeq$1 extends AbstractFunction0<Combiner<T, ParSeq<T>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterable$$anonfun$toSeq$1(ParIterable<T> parIterable) {
    }

    @Override // scala.Function0
    public final Combiner<T, ParSeq<T>> apply() {
        return ParSeq$.MODULE$.newCombiner();
    }
}
