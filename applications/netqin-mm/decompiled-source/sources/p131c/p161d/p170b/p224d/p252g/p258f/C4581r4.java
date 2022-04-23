package p131c.p161d.p170b.p224d.p252g.p258f;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.r4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/r4.class */
public final class C4581r4 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f16865a;

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> f16866b;

    /* renamed from: c */
    public final /* synthetic */ C4567p4 f16867c;

    public C4581r4(C4567p4 p4Var) {
        List list;
        this.f16867c = p4Var;
        list = this.f16867c.f16838b;
        this.f16865a = list.size();
    }

    public /* synthetic */ C4581r4(C4567p4 p4Var, C4588s4 s4Var) {
        this(p4Var);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f16865a;
        if (i > 0) {
            list = this.f16867c.f16838b;
            if (i <= list.size()) {
                return true;
            }
        }
        return zza().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (zza().hasNext()) {
            return (Map.Entry) zza().next();
        }
        list = this.f16867c.f16838b;
        int i = this.f16865a - 1;
        this.f16865a = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public final Iterator<Map.Entry<K, V>> zza() {
        Map map;
        if (this.f16866b == null) {
            map = this.f16867c.f16842f;
            this.f16866b = map.entrySet().iterator();
        }
        return this.f16866b;
    }
}
