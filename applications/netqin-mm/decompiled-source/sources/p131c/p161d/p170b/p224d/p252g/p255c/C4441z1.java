package p131c.p161d.p170b.p224d.p252g.p255c;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.z1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/z1.class */
public final class C4441z1 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f16663a;

    /* renamed from: b */
    public boolean f16664b;

    /* renamed from: c */
    public Iterator<Map.Entry<K, V>> f16665c;

    /* renamed from: d */
    public final /* synthetic */ C4406r1 f16666d;

    public C4441z1(C4406r1 r1Var) {
        this.f16666d = r1Var;
        this.f16663a = -1;
    }

    public /* synthetic */ C4441z1(C4406r1 r1Var, C4411s1 s1Var) {
        this(r1Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m25569a() {
        Map map;
        if (this.f16665c == null) {
            map = this.f16666d.f16622c;
            this.f16665c = map.entrySet().iterator();
        }
        return this.f16665c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f16663a + 1;
        list = this.f16666d.f16621b;
        if (i < list.size()) {
            return true;
        }
        map = this.f16666d.f16622c;
        return !map.isEmpty() && m25569a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object next;
        List list2;
        this.f16664b = true;
        int i = this.f16663a + 1;
        this.f16663a = i;
        list = this.f16666d.f16621b;
        if (i < list.size()) {
            list2 = this.f16666d.f16621b;
            next = list2.get(this.f16663a);
        } else {
            next = m25569a().next();
        }
        return (Map.Entry) next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f16664b) {
            this.f16664b = false;
            this.f16666d.m25653e();
            int i = this.f16663a;
            list = this.f16666d.f16621b;
            if (i < list.size()) {
                C4406r1 r1Var = this.f16666d;
                int i2 = this.f16663a;
                this.f16663a = i2 - 1;
                r1Var.m25660b(i2);
                return;
            }
            m25569a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
