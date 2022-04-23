package p626l.p632u;

import java.util.Iterator;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.u.a0 */
/* loaded from: classes3-dex2jar.jar:l/u/a0.class */
public abstract class AbstractC14993a0 implements Iterator<Integer>, AbstractC15141a {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Integer next() {
        return Integer.valueOf(nextInt());
    }

    public abstract int nextInt();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
