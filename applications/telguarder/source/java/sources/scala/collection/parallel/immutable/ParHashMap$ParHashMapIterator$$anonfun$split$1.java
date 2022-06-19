package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.Buffer;
import scala.collection.parallel.immutable.ParHashMap;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParHashMap$ParHashMapIterator$$anonfun$split$1.class */
public final class ParHashMap$ParHashMapIterator$$anonfun$split$1 extends AbstractFunction1<Buffer<Tuple2<K, V>>, ParHashMap<K, V>.ParHashMapIterator> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashMap.ParHashMapIterator $outer;

    public ParHashMap$ParHashMapIterator$$anonfun$split$1(ParHashMap<K, V>.ParHashMapIterator parHashMapIterator) {
        Objects.requireNonNull(parHashMapIterator);
        this.$outer = parHashMapIterator;
    }

    public final ParHashMap<K, V>.ParHashMapIterator apply(Buffer<Tuple2<K, V>> buffer) {
        return new ParHashMap.ParHashMapIterator(this.$outer.m102x9cf26b92(), buffer.iterator(), buffer.length());
    }
}
