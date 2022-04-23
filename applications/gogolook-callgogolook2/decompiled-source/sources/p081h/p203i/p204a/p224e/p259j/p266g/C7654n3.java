package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.g.n3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/n3.class */
public class C7654n3 extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: a */
    public final /* synthetic */ C7578e3 f17969a;

    public C7654n3(C7578e3 e3Var) {
        this.f17969a = e3Var;
    }

    public /* synthetic */ C7654n3(C7578e3 e3Var, C7590f3 f3Var) {
        this(e3Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f17969a.m20202a((C7578e3) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f17969a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f17969a.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<K, V>> iterator() {
        return new C7647m3(this.f17969a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f17969a.remove(entry.getKey());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f17969a.size();
    }
}
