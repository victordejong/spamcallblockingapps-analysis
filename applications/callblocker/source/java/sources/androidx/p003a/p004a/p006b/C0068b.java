package androidx.p003a.p004a.p006b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: androidx.a.a.b.b */
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/b.class */
public class C0068b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    C0071c<K, V> f163a;

    /* renamed from: b */
    private C0071c<K, V> f164b;

    /* renamed from: c */
    private WeakHashMap<AbstractC0074f<K, V>, Boolean> f165c = new WeakHashMap<>();

    /* renamed from: d */
    private int f166d = 0;

    /* renamed from: androidx.a.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$a.class */
    public static class C0069a<K, V> extends AbstractC0073e<K, V> {
        C0069a(C0071c<K, V> c0071c, C0071c<K, V> c0071c2) {
            super(c0071c, c0071c2);
        }

        @Override // androidx.p003a.p004a.p006b.C0068b.AbstractC0073e
        /* renamed from: a */
        C0071c<K, V> mo22294a(C0071c<K, V> c0071c) {
            return c0071c.f169c;
        }

        @Override // androidx.p003a.p004a.p006b.C0068b.AbstractC0073e
        /* renamed from: b */
        C0071c<K, V> mo22292b(C0071c<K, V> c0071c) {
            return c0071c.f170d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.a.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$b.class */
    public static class C0070b<K, V> extends AbstractC0073e<K, V> {
        C0070b(C0071c<K, V> c0071c, C0071c<K, V> c0071c2) {
            super(c0071c, c0071c2);
        }

        @Override // androidx.p003a.p004a.p006b.C0068b.AbstractC0073e
        /* renamed from: a */
        C0071c<K, V> mo22294a(C0071c<K, V> c0071c) {
            return c0071c.f170d;
        }

        @Override // androidx.p003a.p004a.p006b.C0068b.AbstractC0073e
        /* renamed from: b */
        C0071c<K, V> mo22292b(C0071c<K, V> c0071c) {
            return c0071c.f169c;
        }
    }

    /* renamed from: androidx.a.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$c.class */
    public static class C0071c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        final K f167a;

        /* renamed from: b */
        final V f168b;

        /* renamed from: c */
        C0071c<K, V> f169c;

        /* renamed from: d */
        C0071c<K, V> f170d;

        C0071c(K k, V v) {
            this.f167a = k;
            this.f168b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj != this) {
                if (!(obj instanceof C0071c)) {
                    z = false;
                } else {
                    C0071c c0071c = (C0071c) obj;
                    if (!this.f167a.equals(c0071c.f167a) || !this.f168b.equals(c0071c.f168b)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f167a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f168b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f167a.hashCode() ^ this.f168b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f167a + "=" + this.f168b;
        }
    }

    /* renamed from: androidx.a.a.b.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$d.class */
    public class C0072d implements AbstractC0074f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private C0071c<K, V> f172b;

        /* renamed from: c */
        private boolean f173c = true;

        C0072d() {
            C0068b.this = r4;
        }

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (this.f173c) {
                this.f173c = false;
                this.f172b = C0068b.this.f163a;
            } else {
                this.f172b = this.f172b != null ? this.f172b.f169c : null;
            }
            return this.f172b;
        }

        @Override // androidx.p003a.p004a.p006b.C0068b.AbstractC0074f
        /* renamed from: a_ */
        public void mo22291a_(C0071c<K, V> c0071c) {
            if (c0071c == this.f172b) {
                this.f172b = this.f172b.f170d;
                this.f173c = this.f172b == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (this.f173c) {
                if (C0068b.this.f163a == null) {
                    z = false;
                }
            } else if (this.f172b == null || this.f172b.f169c == null) {
                z = false;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.a.a.b.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$e.class */
    public static abstract class AbstractC0073e<K, V> implements AbstractC0074f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        C0071c<K, V> f174a;

        /* renamed from: b */
        C0071c<K, V> f175b;

        AbstractC0073e(C0071c<K, V> c0071c, C0071c<K, V> c0071c2) {
            this.f174a = c0071c2;
            this.f175b = c0071c;
        }

        /* renamed from: b */
        private C0071c<K, V> m22293b() {
            return (this.f175b == this.f174a || this.f174a == null) ? null : mo22294a(this.f175b);
        }

        /* renamed from: a */
        abstract C0071c<K, V> mo22294a(C0071c<K, V> c0071c);

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            C0071c<K, V> c0071c = this.f175b;
            this.f175b = m22293b();
            return c0071c;
        }

        @Override // androidx.p003a.p004a.p006b.C0068b.AbstractC0074f
        /* renamed from: a_ */
        public void mo22291a_(C0071c<K, V> c0071c) {
            if (this.f174a == c0071c && c0071c == this.f175b) {
                this.f175b = null;
                this.f174a = null;
            }
            if (this.f174a == c0071c) {
                this.f174a = mo22292b(this.f174a);
            }
            if (this.f175b == c0071c) {
                this.f175b = m22293b();
            }
        }

        /* renamed from: b */
        abstract C0071c<K, V> mo22292b(C0071c<K, V> c0071c);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f175b != null;
        }
    }

    /* renamed from: androidx.a.a.b.b$f */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$f.class */
    public interface AbstractC0074f<K, V> {
        /* renamed from: a_ */
        void mo22291a_(C0071c<K, V> c0071c);
    }

    /* renamed from: a */
    public int m22305a() {
        return this.f166d;
    }

    /* renamed from: a */
    protected C0071c<K, V> mo22304a(K k) {
        C0071c<K, V> c0071c;
        C0071c<K, V> c0071c2 = this.f163a;
        while (true) {
            c0071c = c0071c2;
            if (c0071c == null || c0071c.f167a.equals(k)) {
                break;
            }
            c0071c2 = c0071c.f169c;
        }
        return c0071c;
    }

    /* renamed from: a */
    public V mo22303a(K k, V v) {
        V v2;
        C0071c<K, V> mo22304a = mo22304a(k);
        if (mo22304a != null) {
            v2 = mo22304a.f168b;
        } else {
            m22300b(k, v);
            v2 = null;
        }
        return v2;
    }

    /* renamed from: b */
    public C0071c<K, V> m22300b(K k, V v) {
        C0071c<K, V> c0071c = new C0071c<>(k, v);
        this.f166d++;
        if (this.f164b == null) {
            this.f163a = c0071c;
            this.f164b = this.f163a;
        } else {
            this.f164b.f169c = c0071c;
            c0071c.f170d = this.f164b;
            this.f164b = c0071c;
        }
        return c0071c;
    }

    /* renamed from: b */
    public V mo22301b(K k) {
        V v;
        C0071c<K, V> mo22304a = mo22304a(k);
        if (mo22304a == null) {
            v = null;
        } else {
            this.f166d--;
            if (!this.f165c.isEmpty()) {
                for (AbstractC0074f<K, V> abstractC0074f : this.f165c.keySet()) {
                    abstractC0074f.mo22291a_(mo22304a);
                }
            }
            if (mo22304a.f170d != null) {
                mo22304a.f170d.f169c = mo22304a.f169c;
            } else {
                this.f163a = mo22304a.f169c;
            }
            if (mo22304a.f169c != null) {
                mo22304a.f169c.f170d = mo22304a.f170d;
            } else {
                this.f164b = mo22304a.f170d;
            }
            mo22304a.f169c = null;
            mo22304a.f170d = null;
            v = mo22304a.f168b;
        }
        return v;
    }

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> m22302b() {
        C0070b c0070b = new C0070b(this.f164b, this.f163a);
        this.f165c.put(c0070b, false);
        return c0070b;
    }

    /* renamed from: c */
    public C0068b<K, V>.C0072d m22299c() {
        C0068b<K, V>.C0072d c0072d = new C0072d();
        this.f165c.put(c0072d, false);
        return c0072d;
    }

    /* renamed from: d */
    public Map.Entry<K, V> m22298d() {
        return this.f163a;
    }

    /* renamed from: e */
    public Map.Entry<K, V> m22297e() {
        return this.f164b;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else {
            z = false;
            if (obj instanceof C0068b) {
                C0068b c0068b = (C0068b) obj;
                z = false;
                if (m22305a() == c0068b.m22305a()) {
                    Iterator<Map.Entry<K, V>> it = iterator();
                    Iterator<Map.Entry<K, V>> it2 = c0068b.iterator();
                    while (it.hasNext() && it2.hasNext()) {
                        Map.Entry<K, V> next = it.next();
                        Map.Entry<K, V> next2 = it2.next();
                        if (next == null) {
                            z = false;
                            if (next2 != null) {
                                break;
                            }
                        }
                        if (next != null && !next.equals(next2)) {
                            z = false;
                            break;
                        }
                    }
                    z = !it.hasNext() && !it2.hasNext();
                }
            }
        }
        return z;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().hashCode() + i2;
            } else {
                return i2;
            }
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        C0069a c0069a = new C0069a(this.f163a, this.f164b);
        this.f165c.put(c0069a, false);
        return c0069a;
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
