package kotlin.p073a;

import java.util.Iterator;
/* renamed from: kotlin.a.t */
/* loaded from: classes-dex2jar.jar:kotlin/a/t.class */
public abstract class AbstractC1613t implements Iterator<Integer> {
    /* renamed from: a */
    public final Integer next() {
        return Integer.valueOf(mo3087b());
    }

    /* renamed from: b */
    public abstract int mo3087b();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
