package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TrieIterator$$anonfun$iteratorWithSize$1.class */
public final class TrieIterator$$anonfun$iteratorWithSize$1 extends AbstractFunction1<Iterable<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public TrieIterator$$anonfun$iteratorWithSize$1(TrieIterator<T> trieIterator) {
    }

    public final int apply(Iterable<T> iterable) {
        return iterable.size();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply((Iterable) obj));
    }
}
