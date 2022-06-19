package scala.collection;

import scala.Function0;
import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$JoinIterator$$anonfun$$plus$plus$2.class */
public final class Iterator$JoinIterator$$anonfun$$plus$plus$2 extends AbstractFunction0<Iterator<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 that$2;

    /* JADX WARN: Multi-variable type inference failed */
    public Iterator$JoinIterator$$anonfun$$plus$plus$2(Iterator.JoinIterator joinIterator, Iterator.JoinIterator<A> joinIterator2) {
        this.that$2 = joinIterator2;
    }

    @Override // scala.Function0
    public final Iterator<B> apply() {
        return ((GenTraversableOnce) this.that$2.apply()).toIterator();
    }
}
