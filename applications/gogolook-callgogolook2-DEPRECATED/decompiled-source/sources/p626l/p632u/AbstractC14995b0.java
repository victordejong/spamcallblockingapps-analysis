package p626l.p632u;

import java.util.Iterator;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.u.b0 */
/* loaded from: classes3-dex2jar.jar:l/u/b0.class */
public abstract class AbstractC14995b0 implements Iterator<Long>, AbstractC15141a {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Long next() {
        return Long.valueOf(nextLong());
    }

    public abstract long nextLong();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
