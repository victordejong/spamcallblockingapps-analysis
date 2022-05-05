package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.q.p4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/p4.class */
public final class C8702p4<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    public Iterator<Map.Entry<K, Object>> f19925a;

    public C8702p4(Iterator<Map.Entry<K, Object>> it) {
        this.f19925a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19925a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f19925a.next();
        return next.getValue() instanceof C8674m4 ? new C8693o4(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f19925a.remove();
    }
}
