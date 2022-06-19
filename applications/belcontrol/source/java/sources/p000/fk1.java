package p000;

import java.util.Iterator;
/* renamed from: fk1 */
/* loaded from: classes3-dex2jar.jar:fk1.class */
public abstract class fk1 implements Iterator<Integer> {
    /* renamed from: a */
    public final Integer next() {
        return Integer.valueOf(mo297b());
    }

    /* renamed from: b */
    public abstract int mo297b();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
