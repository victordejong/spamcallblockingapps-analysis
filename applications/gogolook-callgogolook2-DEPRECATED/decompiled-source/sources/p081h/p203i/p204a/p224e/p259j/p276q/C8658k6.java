package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.q.k6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/k6.class */
public final class C8658k6 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f19800a;

    /* renamed from: b */
    public boolean f19801b;

    /* renamed from: c */
    public Iterator<Map.Entry<K, V>> f19802c;

    /* renamed from: d */
    public final /* synthetic */ C8575c6 f19803d;

    public C8658k6(C8575c6 c6Var) {
        this.f19803d = c6Var;
        this.f19800a = -1;
    }

    public /* synthetic */ C8658k6(C8575c6 c6Var, C8584d6 d6Var) {
        this(c6Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m17427a() {
        Map map;
        if (this.f19802c == null) {
            map = this.f19803d.f19642c;
            this.f19802c = map.entrySet().iterator();
        }
        return this.f19802c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f19800a + 1;
        list = this.f19803d.f19641b;
        if (i < list.size()) {
            return true;
        }
        map = this.f19803d.f19642c;
        return !map.isEmpty() && m17427a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f19801b = true;
        int i = this.f19800a + 1;
        this.f19800a = i;
        list = this.f19803d.f19641b;
        if (i >= list.size()) {
            return (Map.Entry) m17427a().next();
        }
        list2 = this.f19803d.f19641b;
        return (Map.Entry) list2.get(this.f19800a);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f19801b) {
            this.f19801b = false;
            this.f19803d.m17738f();
            int i = this.f19800a;
            list = this.f19803d.f19641b;
            if (i < list.size()) {
                C8575c6 c6Var = this.f19803d;
                int i2 = this.f19800a;
                this.f19800a = i2 - 1;
                c6Var.m17746b(i2);
                return;
            }
            m17427a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
