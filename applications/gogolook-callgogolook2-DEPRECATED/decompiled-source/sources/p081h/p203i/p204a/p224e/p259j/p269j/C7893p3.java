package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.p3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/p3.class */
public final class C7893p3 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f18514a;

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> f18515b;

    /* renamed from: c */
    public final /* synthetic */ C7876n3 f18516c;

    public C7893p3(C7876n3 n3Var) {
        List list;
        this.f18516c = n3Var;
        list = this.f18516c.f18443b;
        this.f18514a = list.size();
    }

    public /* synthetic */ C7893p3(C7876n3 n3Var, C7886o3 o3Var) {
        this(n3Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m19090a() {
        Map map;
        if (this.f18515b == null) {
            map = this.f18516c.f18447f;
            this.f18515b = map.entrySet().iterator();
        }
        return this.f18515b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f18514a;
        if (i > 0) {
            list = this.f18516c.f18443b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m19090a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (m19090a().hasNext()) {
            return (Map.Entry) m19090a().next();
        }
        list = this.f18516c.f18443b;
        int i = this.f18514a - 1;
        this.f18514a = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
