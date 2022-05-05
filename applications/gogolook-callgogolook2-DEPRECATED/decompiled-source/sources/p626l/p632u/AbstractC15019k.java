package p626l.p632u;

import java.util.Iterator;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.u.k */
/* loaded from: classes3-dex2jar.jar:l/u/k.class */
public abstract class AbstractC15019k implements Iterator<Boolean>, AbstractC15141a {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Boolean next() {
        return Boolean.valueOf(nextBoolean());
    }

    public abstract boolean nextBoolean();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
