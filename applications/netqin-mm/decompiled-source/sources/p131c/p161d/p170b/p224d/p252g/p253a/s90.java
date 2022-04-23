package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.s90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s90.class */
public final class s90 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f15088a;

    /* renamed from: b */
    public boolean f15089b;

    /* renamed from: c */
    public Iterator<Map.Entry<K, V>> f15090c;

    /* renamed from: d */
    public final /* synthetic */ k90 f15091d;

    public s90(k90 k90Var) {
        this.f15091d = k90Var;
        this.f15088a = -1;
    }

    public /* synthetic */ s90(k90 k90Var, j90 j90Var) {
        this(k90Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m26388a() {
        Map map;
        if (this.f15090c == null) {
            map = this.f15091d.f13849c;
            this.f15090c = map.entrySet().iterator();
        }
        return this.f15090c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f15088a + 1;
        list = this.f15091d.f13848b;
        if (i < list.size()) {
            return true;
        }
        map = this.f15091d.f13849c;
        return !map.isEmpty() && m26388a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f15089b = true;
        int i = this.f15088a + 1;
        this.f15088a = i;
        list = this.f15091d.f13848b;
        if (i >= list.size()) {
            return (Map.Entry) m26388a().next();
        }
        list2 = this.f15091d.f13848b;
        return (Map.Entry) list2.get(this.f15088a);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f15089b) {
            this.f15089b = false;
            this.f15091d.m26717f();
            int i = this.f15088a;
            list = this.f15091d.f13848b;
            if (i < list.size()) {
                k90 k90Var = this.f15091d;
                int i2 = this.f15088a;
                this.f15088a = i2 - 1;
                k90Var.m26725b(i2);
                return;
            }
            m26388a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
