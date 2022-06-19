package scala.collection.parallel;

import scala.Serializable;
import scala.collection.parallel.immutable.HashMapCombiner;
import scala.collection.parallel.immutable.HashMapCombiner$;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$7.class */
public final class ParIterableLike$$anonfun$7 extends AbstractFunction0<HashMapCombiner<K, T>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$7(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    @Override // scala.Function0
    public final HashMapCombiner<K, T> apply() {
        return HashMapCombiner$.MODULE$.apply();
    }
}
