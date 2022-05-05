package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.q.e6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/e6.class */
public final class C8593e6 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f19673a;

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> f19674b;

    /* renamed from: c */
    public final /* synthetic */ C8575c6 f19675c;

    public C8593e6(C8575c6 c6Var) {
        List list;
        this.f19675c = c6Var;
        list = this.f19675c.f19641b;
        this.f19673a = list.size();
    }

    public /* synthetic */ C8593e6(C8575c6 c6Var, C8584d6 d6Var) {
        this(c6Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m17681a() {
        Map map;
        if (this.f19674b == null) {
            map = this.f19675c.f19645f;
            this.f19674b = map.entrySet().iterator();
        }
        return this.f19674b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f19673a;
        if (i > 0) {
            list = this.f19675c.f19641b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m17681a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (m17681a().hasNext()) {
            return (Map.Entry) m17681a().next();
        }
        list = this.f19675c.f19641b;
        int i = this.f19673a - 1;
        this.f19673a = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
