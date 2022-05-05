package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.v3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/v3.class */
public final class C7940v3 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f18629a;

    /* renamed from: b */
    public boolean f18630b;

    /* renamed from: c */
    public Iterator<Map.Entry<K, V>> f18631c;

    /* renamed from: d */
    public final /* synthetic */ C7876n3 f18632d;

    public C7940v3(C7876n3 n3Var) {
        this.f18632d = n3Var;
        this.f18629a = -1;
    }

    public /* synthetic */ C7940v3(C7876n3 n3Var, C7886o3 o3Var) {
        this(n3Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m18855a() {
        Map map;
        if (this.f18631c == null) {
            map = this.f18632d.f18444c;
            this.f18631c = map.entrySet().iterator();
        }
        return this.f18631c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f18629a + 1;
        list = this.f18632d.f18443b;
        if (i < list.size()) {
            return true;
        }
        map = this.f18632d.f18444c;
        return !map.isEmpty() && m18855a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f18630b = true;
        int i = this.f18629a + 1;
        this.f18629a = i;
        list = this.f18632d.f18443b;
        if (i >= list.size()) {
            return (Map.Entry) m18855a().next();
        }
        list2 = this.f18632d.f18443b;
        return (Map.Entry) list2.get(this.f18629a);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f18630b) {
            this.f18630b = false;
            this.f18632d.m19129f();
            int i = this.f18629a;
            list = this.f18632d.f18443b;
            if (i < list.size()) {
                C7876n3 n3Var = this.f18632d;
                int i2 = this.f18629a;
                this.f18629a = i2 - 1;
                n3Var.m19137b(i2);
                return;
            }
            m18855a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
