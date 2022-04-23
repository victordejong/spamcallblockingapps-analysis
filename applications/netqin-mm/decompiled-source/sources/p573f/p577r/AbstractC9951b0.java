package p573f.p577r;

import java.util.Iterator;
/* renamed from: f.r.b0 */
/* loaded from: classes2-dex2jar.jar:f/r/b0.class */
public abstract class AbstractC9951b0 implements Iterator<Long> {
    /* renamed from: a */
    public abstract long mo1651a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Long next() {
        return Long.valueOf(mo1651a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
