package scala.collection;

import scala.Function1;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$$anon$7.class */
public final class Iterator$$anon$7 extends AbstractIterator<T> {
    private T acc;
    private final Function1 f$2;
    private boolean first = true;

    /* JADX WARN: Multi-variable type inference failed */
    public Iterator$$anon$7(Object obj, Function1 function1) {
        this.f$2 = function1;
        this.acc = obj;
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.Object] */
    @Override // scala.collection.Iterator
    public T next() {
        if (this.first) {
            this.first = false;
        } else {
            this.acc = this.f$2.apply(this.acc);
        }
        return this.acc;
    }
}
