package scala.collection.immutable;

import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TrieIterator$$anonfun$collisionToArray$1.class */
public final class TrieIterator$$anonfun$collisionToArray$1 extends AbstractFunction1<Tuple2<Object, Object>, HashMap<Object, Object>> implements Serializable {
    public static final long serialVersionUID = 0;

    public TrieIterator$$anonfun$collisionToArray$1(TrieIterator<T> trieIterator) {
    }

    public final HashMap<Object, Object> apply(Tuple2<Object, Object> tuple2) {
        return (HashMap) HashMap$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Tuple2[]{tuple2}));
    }
}
