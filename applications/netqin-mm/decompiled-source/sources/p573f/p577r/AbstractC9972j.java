package p573f.p577r;

import java.util.Iterator;
/* renamed from: f.r.j */
/* loaded from: classes2-dex2jar.jar:f/r/j.class */
public abstract class AbstractC9972j implements Iterator<Boolean> {
    /* renamed from: a */
    public abstract boolean mo1663a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Boolean next() {
        return Boolean.valueOf(mo1663a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
