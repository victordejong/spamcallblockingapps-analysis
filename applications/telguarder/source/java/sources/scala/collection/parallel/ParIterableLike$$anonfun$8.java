package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.parallel.immutable.HashMapCombiner;
import scala.collection.parallel.immutable.ParHashMap;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$8.class */
public final class ParIterableLike$$anonfun$8 extends AbstractFunction1<HashMapCombiner<K, T>, ParHashMap<K, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ParIterableLike $outer;

    public ParIterableLike$$anonfun$8(ParIterableLike<T, Repr, Sequential> parIterableLike) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
    }

    public final ParHashMap<K, Repr> apply(HashMapCombiner<K, T> hashMapCombiner) {
        return hashMapCombiner.groupByKey(new ParIterableLike$$anonfun$8$$anonfun$apply$2(this));
    }

    public /* synthetic */ ParIterableLike scala$collection$parallel$ParIterableLike$$anonfun$$$outer() {
        return this.$outer;
    }
}
