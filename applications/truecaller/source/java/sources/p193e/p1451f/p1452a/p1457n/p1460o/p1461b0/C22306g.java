package p193e.p1451f.p1452a.p1457n.p1460o.p1461b0;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22316l;
/* renamed from: e.f.a.n.o.b0.g */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/g.class */
public class C22306g<K extends AbstractC22316l, V> {

    /* renamed from: a */
    public final C22307a<K, V> f61961a = new C22307a<>(null);

    /* renamed from: b */
    public final Map<K, C22307a<K, V>> f61962b = new HashMap();

    /* renamed from: e.f.a.n.o.b0.g$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/g$a.class */
    public static class C22307a<K, V> {

        /* renamed from: a */
        public final K f61963a;

        /* renamed from: b */
        public List<V> f61964b;

        /* renamed from: c */
        public C22307a<K, V> f61965c;

        /* renamed from: d */
        public C22307a<K, V> f61966d;

        public C22307a() {
            this(null);
        }

        public C22307a(K k) {
            this.f61966d = this;
            this.f61965c = this;
            this.f61963a = k;
        }

        /* renamed from: a */
        public V m8342a() {
            List<V> list = this.f61964b;
            int size = list != null ? list.size() : 0;
            return size > 0 ? this.f61964b.remove(size - 1) : null;
        }
    }

    /* renamed from: a */
    public V m8345a(K k) {
        C22307a<K, V> c22307a;
        C22307a<K, V> c22307a2 = this.f61962b.get(k);
        if (c22307a2 == null) {
            C22307a<K, V> c22307a3 = new C22307a<>(k);
            this.f61962b.put(k, c22307a3);
            c22307a = c22307a3;
        } else {
            k.mo8314a();
            c22307a = c22307a2;
        }
        C22307a<K, V> c22307a4 = c22307a.f61966d;
        c22307a4.f61965c = c22307a.f61965c;
        c22307a.f61965c.f61966d = c22307a4;
        C22307a<K, V> c22307a5 = this.f61961a;
        c22307a.f61966d = c22307a5;
        C22307a<K, V> c22307a6 = c22307a5.f61965c;
        c22307a.f61965c = c22307a6;
        c22307a6.f61966d = c22307a;
        c22307a.f61966d.f61965c = c22307a;
        return c22307a.m8342a();
    }

    /* renamed from: b */
    public void m8344b(K k, V v) {
        C22307a<K, V> c22307a;
        C22307a<K, V> c22307a2 = this.f61962b.get(k);
        if (c22307a2 == null) {
            C22307a<K, V> c22307a3 = new C22307a<>(k);
            C22307a<K, V> c22307a4 = c22307a3.f61966d;
            c22307a4.f61965c = c22307a3.f61965c;
            c22307a3.f61965c.f61966d = c22307a4;
            C22307a<K, V> c22307a5 = this.f61961a;
            c22307a3.f61966d = c22307a5.f61966d;
            c22307a3.f61965c = c22307a5;
            c22307a5.f61966d = c22307a3;
            c22307a3.f61966d.f61965c = c22307a3;
            this.f61962b.put(k, c22307a3);
            c22307a = c22307a3;
        } else {
            k.mo8314a();
            c22307a = c22307a2;
        }
        if (c22307a.f61964b == null) {
            c22307a.f61964b = new ArrayList();
        }
        c22307a.f61964b.add(v);
    }

    /* renamed from: c */
    public V m8343c() {
        C22307a c22307a = this.f61961a.f61966d;
        while (true) {
            C22307a c22307a2 = c22307a;
            if (!c22307a2.equals(this.f61961a)) {
                V v = (V) c22307a2.m8342a();
                if (v != null) {
                    return v;
                }
                C22307a<K, V> c22307a3 = c22307a2.f61966d;
                c22307a3.f61965c = c22307a2.f61965c;
                c22307a2.f61965c.f61966d = c22307a3;
                this.f61962b.remove(c22307a2.f61963a);
                ((AbstractC22316l) c22307a2.f61963a).mo8314a();
                c22307a = c22307a2.f61966d;
            } else {
                return null;
            }
        }
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        C22307a<K, V> c22307a = this.f61961a.f61965c;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (c22307a.equals(this.f61961a)) {
                break;
            }
            sb.append('{');
            sb.append(c22307a.f61963a);
            sb.append(':');
            List<V> list = c22307a.f61964b;
            sb.append(list != null ? list.size() : 0);
            sb.append("}, ");
            c22307a = c22307a.f61965c;
            z2 = true;
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
