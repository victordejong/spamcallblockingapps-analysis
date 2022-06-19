package scala.collection;

import scala.Function0;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$$anon$9.class */
public final class Iterator$$anon$9 extends AbstractIterator<A> {
    private final Function0 elem$3;

    public Iterator$$anon$9(Function0 function0) {
        this.elem$3 = function0;
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [A, java.lang.Object] */
    @Override // scala.collection.Iterator
    public A next() {
        return this.elem$3.apply();
    }
}
