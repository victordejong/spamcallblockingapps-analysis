package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParMapLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$4$$anonfun$2.class */
public final class ParMapLike$$anon$4$$anonfun$2 extends AbstractFunction1<IterableSplitter<Tuple2<K, V>>, IterableSplitter<V>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParMapLike$$anon$4 $outer;

    public ParMapLike$$anon$4$$anonfun$2(ParMapLike$$anon$4 parMapLike$$anon$4) {
        Objects.requireNonNull(parMapLike$$anon$4);
        this.$outer = parMapLike$$anon$4;
    }

    public final IterableSplitter<V> apply(IterableSplitter<Tuple2<K, V>> iterableSplitter) {
        return ParMapLike.Cclass.scala$collection$parallel$ParMapLike$$valuesIterator(this.$outer.scala$collection$parallel$ParMapLike$$anon$$$outer(), iterableSplitter);
    }
}
