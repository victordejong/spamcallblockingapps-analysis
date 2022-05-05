package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.g.r1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/r1.class */
public final class C7680r1<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    public Iterator<Map.Entry<K, Object>> f18022a;

    public C7680r1(Iterator<Map.Entry<K, Object>> it) {
        this.f18022a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18022a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f18022a.next();
        return next.getValue() instanceof C7659o1 ? new C7673q1(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f18022a.remove();
    }
}
