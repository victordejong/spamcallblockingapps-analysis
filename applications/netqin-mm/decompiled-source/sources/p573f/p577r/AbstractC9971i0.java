package p573f.p577r;

import java.util.Iterator;
import p573f.C9933i;
/* renamed from: f.r.i0 */
/* loaded from: classes2-dex2jar.jar:f/r/i0.class */
public abstract class AbstractC9971i0 implements Iterator<C9933i> {
    /* renamed from: a */
    public abstract int mo1713a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final C9933i next() {
        return C9933i.m1765b(mo1713a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
