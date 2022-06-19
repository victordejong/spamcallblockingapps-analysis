package scala.collection.immutable;

import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TrieIterator$$anonfun$collisionToArray$2.class */
public final class TrieIterator$$anonfun$collisionToArray$2 extends AbstractFunction1<Object, HashSet<Object>> implements Serializable {
    public static final long serialVersionUID = 0;

    public TrieIterator$$anonfun$collisionToArray$2(TrieIterator<T> trieIterator) {
    }

    @Override // scala.Function1
    public final HashSet<Object> apply(Object obj) {
        return (HashSet) HashSet$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{obj}));
    }
}
