package scala.collection;

import scala.Function0;
import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$ConcatIterator$$anonfun$$plus$plus$1.class */
public final class Iterator$ConcatIterator$$anonfun$$plus$plus$1 extends AbstractFunction0<Iterator<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 that$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Iterator$ConcatIterator$$anonfun$$plus$plus$1(Iterator.ConcatIterator concatIterator, Iterator.ConcatIterator<A> concatIterator2) {
        this.that$1 = concatIterator2;
    }

    @Override // scala.Function0
    public final Iterator<B> apply() {
        return ((GenTraversableOnce) this.that$1.apply()).toIterator();
    }
}
