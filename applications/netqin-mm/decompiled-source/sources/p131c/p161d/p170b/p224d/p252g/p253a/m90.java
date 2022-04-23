package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.m90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/m90.class */
public final class m90 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f14026a;

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> f14027b;

    /* renamed from: c */
    public final /* synthetic */ k90 f14028c;

    public m90(k90 k90Var) {
        List list;
        this.f14028c = k90Var;
        list = this.f14028c.f13848b;
        this.f14026a = list.size();
    }

    public /* synthetic */ m90(k90 k90Var, j90 j90Var) {
        this(k90Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m26646a() {
        Map map;
        if (this.f14027b == null) {
            map = this.f14028c.f13852f;
            this.f14027b = map.entrySet().iterator();
        }
        return this.f14027b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f14026a;
        if (i > 0) {
            list = this.f14028c.f13848b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m26646a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (m26646a().hasNext()) {
            return (Map.Entry) m26646a().next();
        }
        list = this.f14028c.f13848b;
        int i = this.f14026a - 1;
        this.f14026a = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
