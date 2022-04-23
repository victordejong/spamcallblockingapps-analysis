package p573f.p577r;

import java.util.Iterator;
/* renamed from: f.r.l */
/* loaded from: classes2-dex2jar.jar:f/r/l.class */
public abstract class AbstractC9976l implements Iterator<Character> {
    /* renamed from: a */
    public abstract char mo11a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Character next() {
        return Character.valueOf(mo11a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
