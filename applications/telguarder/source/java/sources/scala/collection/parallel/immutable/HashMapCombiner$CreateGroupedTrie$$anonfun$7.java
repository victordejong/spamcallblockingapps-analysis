package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie$$anonfun$7.class */
public final class HashMapCombiner$CreateGroupedTrie$$anonfun$7 extends AbstractFunction1<Tuple2<Object, Object>, Tuple2<Object, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashMapCombiner$CreateGroupedTrie$$anonfun$7(HashMapCombiner<K, V>.CreateGroupedTrie<Repr> createGroupedTrie) {
    }

    public final Tuple2<Object, Repr> apply(Tuple2<Object, Object> tuple2) {
        return new Tuple2<>(tuple2.mo269_1(), ((Builder) tuple2.mo268_2()).result());
    }
}
