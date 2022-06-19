package p020b.p029b.p030a.p032b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: b.b.a.b.b */
/* loaded from: classes-dex2jar.jar:b/b/a/b/b.class */
public class C1475b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: d */
    C1478c<K, V> f5916d;

    /* renamed from: e */
    private C1478c<K, V> f5917e;

    /* renamed from: f */
    private WeakHashMap<AbstractC1481f<K, V>, Boolean> f5918f = new WeakHashMap<>();

    /* renamed from: g */
    private int f5919g = 0;

    /* renamed from: b.b.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:b/b/a/b/b$a.class */
    public static class C1476a<K, V> extends AbstractC1480e<K, V> {
        C1476a(C1478c<K, V> c1478c, C1478c<K, V> c1478c2) {
            super(c1478c, c1478c2);
        }

        @Override // p020b.p029b.p030a.p032b.C1475b.AbstractC1480e
        /* renamed from: b */
        C1478c<K, V> mo29979b(C1478c<K, V> c1478c) {
            return c1478c.f5923g;
        }

        @Override // p020b.p029b.p030a.p032b.C1475b.AbstractC1480e
        /* renamed from: c */
        C1478c<K, V> mo29978c(C1478c<K, V> c1478c) {
            return c1478c.f5922f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.b.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:b/b/a/b/b$b.class */
    public static class C1477b<K, V> extends AbstractC1480e<K, V> {
        C1477b(C1478c<K, V> c1478c, C1478c<K, V> c1478c2) {
            super(c1478c, c1478c2);
        }

        @Override // p020b.p029b.p030a.p032b.C1475b.AbstractC1480e
        /* renamed from: b */
        C1478c<K, V> mo29979b(C1478c<K, V> c1478c) {
            return c1478c.f5922f;
        }

        @Override // p020b.p029b.p030a.p032b.C1475b.AbstractC1480e
        /* renamed from: c */
        C1478c<K, V> mo29978c(C1478c<K, V> c1478c) {
            return c1478c.f5923g;
        }
    }

    /* renamed from: b.b.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:b/b/a/b/b$c.class */
    public static class C1478c<K, V> implements Map.Entry<K, V> {

        /* renamed from: d */
        final K f5920d;

        /* renamed from: e */
        final V f5921e;

        /* renamed from: f */
        C1478c<K, V> f5922f;

        /* renamed from: g */
        C1478c<K, V> f5923g;

        C1478c(K k, V v) {
            this.f5920d = k;
            this.f5921e = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C1478c)) {
                return false;
            }
            C1478c c1478c = (C1478c) obj;
            if (!this.f5920d.equals(c1478c.f5920d) || !this.f5921e.equals(c1478c.f5921e)) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f5920d;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f5921e;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f5920d.hashCode() ^ this.f5921e.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f5920d + "=" + this.f5921e;
        }
    }

    /* renamed from: b.b.a.b.b$d */
    /* loaded from: classes-dex2jar.jar:b/b/a/b/b$d.class */
    public class C1479d implements Iterator<Map.Entry<K, V>>, AbstractC1481f<K, V> {

        /* renamed from: d */
        private C1478c<K, V> f5924d;

        /* renamed from: e */
        private boolean f5925e = true;

        C1479d() {
            C1475b.this = r4;
        }

        @Override // p020b.p029b.p030a.p032b.C1475b.AbstractC1481f
        /* renamed from: a */
        public void mo29975a(C1478c<K, V> c1478c) {
            C1478c<K, V> c1478c2 = this.f5924d;
            if (c1478c == c1478c2) {
                C1478c<K, V> c1478c3 = c1478c2.f5923g;
                this.f5924d = c1478c3;
                this.f5925e = c1478c3 == null;
            }
        }

        /* renamed from: b */
        public Map.Entry<K, V> next() {
            if (this.f5925e) {
                this.f5925e = false;
                this.f5924d = C1475b.this.f5916d;
            } else {
                C1478c<K, V> c1478c = this.f5924d;
                this.f5924d = c1478c != null ? c1478c.f5922f : null;
            }
            return this.f5924d;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (!this.f5925e) {
                C1478c<K, V> c1478c = this.f5924d;
                return (c1478c == null || c1478c.f5922f == null) ? false : true;
            }
            if (C1475b.this.f5916d == null) {
                z = false;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.b.a.b.b$e */
    /* loaded from: classes-dex2jar.jar:b/b/a/b/b$e.class */
    public static abstract class AbstractC1480e<K, V> implements Iterator<Map.Entry<K, V>>, AbstractC1481f<K, V> {

        /* renamed from: d */
        C1478c<K, V> f5927d;

        /* renamed from: e */
        C1478c<K, V> f5928e;

        AbstractC1480e(C1478c<K, V> c1478c, C1478c<K, V> c1478c2) {
            this.f5927d = c1478c2;
            this.f5928e = c1478c;
        }

        /* renamed from: e */
        private C1478c<K, V> m29976e() {
            C1478c<K, V> c1478c = this.f5928e;
            C1478c<K, V> c1478c2 = this.f5927d;
            if (c1478c == c1478c2 || c1478c2 == null) {
                return null;
            }
            return mo29978c(c1478c);
        }

        @Override // p020b.p029b.p030a.p032b.C1475b.AbstractC1481f
        /* renamed from: a */
        public void mo29975a(C1478c<K, V> c1478c) {
            if (this.f5927d == c1478c && c1478c == this.f5928e) {
                this.f5928e = null;
                this.f5927d = null;
            }
            C1478c<K, V> c1478c2 = this.f5927d;
            if (c1478c2 == c1478c) {
                this.f5927d = mo29979b(c1478c2);
            }
            if (this.f5928e == c1478c) {
                this.f5928e = m29976e();
            }
        }

        /* renamed from: b */
        abstract C1478c<K, V> mo29979b(C1478c<K, V> c1478c);

        /* renamed from: c */
        abstract C1478c<K, V> mo29978c(C1478c<K, V> c1478c);

        /* renamed from: d */
        public Map.Entry<K, V> next() {
            C1478c<K, V> c1478c = this.f5928e;
            this.f5928e = m29976e();
            return c1478c;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5928e != null;
        }
    }

    /* renamed from: b.b.a.b.b$f */
    /* loaded from: classes-dex2jar.jar:b/b/a/b/b$f.class */
    public interface AbstractC1481f<K, V> {
        /* renamed from: a */
        void mo29975a(C1478c<K, V> c1478c);
    }

    /* renamed from: c */
    public Map.Entry<K, V> m29987c() {
        return this.f5916d;
    }

    /* renamed from: d */
    protected C1478c<K, V> mo29986d(K k) {
        C1478c<K, V> c1478c;
        C1478c<K, V> c1478c2 = this.f5916d;
        while (true) {
            c1478c = c1478c2;
            if (c1478c == null || c1478c.f5920d.equals(k)) {
                break;
            }
            c1478c2 = c1478c.f5922f;
        }
        return c1478c;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C1477b c1477b = new C1477b(this.f5917e, this.f5916d);
        this.f5918f.put(c1477b, Boolean.FALSE);
        return c1477b;
    }

    /* renamed from: e */
    public C1475b<K, V>.C1479d m29985e() {
        C1475b<K, V>.C1479d c1479d = new C1479d();
        this.f5918f.put(c1479d, Boolean.FALSE);
        return c1479d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1475b)) {
            return false;
        }
        C1475b c1475b = (C1475b) obj;
        if (size() != c1475b.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = c1475b.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if (next == null && next2 != null) {
                return false;
            }
            if (next != null && !next.equals(next2)) {
                return false;
            }
        }
        if (it.hasNext() || it2.hasNext()) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public Map.Entry<K, V> m29984h() {
        return this.f5917e;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = i2 + it.next().hashCode();
            } else {
                return i2;
            }
        }
    }

    /* renamed from: i */
    public C1478c<K, V> m29983i(K k, V v) {
        C1478c<K, V> c1478c = new C1478c<>(k, v);
        this.f5919g++;
        C1478c<K, V> c1478c2 = this.f5917e;
        if (c1478c2 == null) {
            this.f5916d = c1478c;
            this.f5917e = c1478c;
            return c1478c;
        }
        c1478c2.f5922f = c1478c;
        c1478c.f5923g = c1478c2;
        this.f5917e = c1478c;
        return c1478c;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        C1476a c1476a = new C1476a(this.f5916d, this.f5917e);
        this.f5918f.put(c1476a, Boolean.FALSE);
        return c1476a;
    }

    /* renamed from: j */
    public V mo29982j(K k, V v) {
        C1478c<K, V> mo29986d = mo29986d(k);
        if (mo29986d != null) {
            return mo29986d.f5921e;
        }
        m29983i(k, v);
        return null;
    }

    /* renamed from: l */
    public V mo29981l(K k) {
        C1478c<K, V> mo29986d = mo29986d(k);
        if (mo29986d == null) {
            return null;
        }
        this.f5919g--;
        if (!this.f5918f.isEmpty()) {
            for (AbstractC1481f<K, V> abstractC1481f : this.f5918f.keySet()) {
                abstractC1481f.mo29975a(mo29986d);
            }
        }
        C1478c<K, V> c1478c = mo29986d.f5923g;
        if (c1478c != null) {
            c1478c.f5922f = mo29986d.f5922f;
        } else {
            this.f5916d = mo29986d.f5922f;
        }
        C1478c<K, V> c1478c2 = mo29986d.f5922f;
        if (c1478c2 != null) {
            c1478c2.f5923g = c1478c;
        } else {
            this.f5917e = c1478c;
        }
        mo29986d.f5922f = null;
        mo29986d.f5923g = null;
        return mo29986d.f5921e;
    }

    public int size() {
        return this.f5919g;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
