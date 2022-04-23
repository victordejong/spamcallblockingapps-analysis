package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.r90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r90.class */
public class r90 extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: a */
    public final /* synthetic */ k90 f14886a;

    public r90(k90 k90Var) {
        this.f14886a = k90Var;
    }

    public /* synthetic */ r90(k90 k90Var, j90 j90Var) {
        this(k90Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f14886a.m26727a((k90) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f14886a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f14886a.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<K, V>> iterator() {
        return new s90(this.f14886a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f14886a.remove(entry.getKey());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f14886a.size();
    }
}
