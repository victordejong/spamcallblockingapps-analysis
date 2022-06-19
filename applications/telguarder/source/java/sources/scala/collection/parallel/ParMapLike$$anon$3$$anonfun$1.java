package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParMapLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$3$$anonfun$1.class */
public final class ParMapLike$$anon$3$$anonfun$1 extends AbstractFunction1<IterableSplitter<Tuple2<K, V>>, IterableSplitter<K>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParMapLike$$anon$3 $outer;

    public ParMapLike$$anon$3$$anonfun$1(ParMapLike$$anon$3 parMapLike$$anon$3) {
        Objects.requireNonNull(parMapLike$$anon$3);
        this.$outer = parMapLike$$anon$3;
    }

    public final IterableSplitter<K> apply(IterableSplitter<Tuple2<K, V>> iterableSplitter) {
        return ParMapLike.Cclass.scala$collection$parallel$ParMapLike$$keysIterator(this.$outer.scala$collection$parallel$ParMapLike$$anon$$$outer(), iterableSplitter);
    }
}
