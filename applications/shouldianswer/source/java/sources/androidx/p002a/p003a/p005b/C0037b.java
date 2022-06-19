package androidx.p002a.p003a.p005b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: androidx.a.a.b.b */
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/b.class */
public class C0037b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    C0040c<K, V> f73a;

    /* renamed from: b */
    private C0040c<K, V> f74b;

    /* renamed from: c */
    private WeakHashMap<AbstractC0043f<K, V>, Boolean> f75c = new WeakHashMap<>();

    /* renamed from: d */
    private int f76d = 0;

    /* renamed from: androidx.a.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$a.class */
    public static class C0038a<K, V> extends AbstractC0042e<K, V> {
        C0038a(C0040c<K, V> c0040c, C0040c<K, V> c0040c2) {
            super(c0040c, c0040c2);
        }

        @Override // androidx.p002a.p003a.p005b.C0037b.AbstractC0042e
        /* renamed from: a */
        C0040c<K, V> mo8002a(C0040c<K, V> c0040c) {
            return c0040c.f79c;
        }

        @Override // androidx.p002a.p003a.p005b.C0037b.AbstractC0042e
        /* renamed from: b */
        C0040c<K, V> mo8000b(C0040c<K, V> c0040c) {
            return c0040c.f80d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.a.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$b.class */
    public static class C0039b<K, V> extends AbstractC0042e<K, V> {
        C0039b(C0040c<K, V> c0040c, C0040c<K, V> c0040c2) {
            super(c0040c, c0040c2);
        }

        @Override // androidx.p002a.p003a.p005b.C0037b.AbstractC0042e
        /* renamed from: a */
        C0040c<K, V> mo8002a(C0040c<K, V> c0040c) {
            return c0040c.f80d;
        }

        @Override // androidx.p002a.p003a.p005b.C0037b.AbstractC0042e
        /* renamed from: b */
        C0040c<K, V> mo8000b(C0040c<K, V> c0040c) {
            return c0040c.f79c;
        }
    }

    /* renamed from: androidx.a.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$c.class */
    public static class C0040c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        final K f77a;

        /* renamed from: b */
        final V f78b;

        /* renamed from: c */
        C0040c<K, V> f79c;

        /* renamed from: d */
        C0040c<K, V> f80d;

        C0040c(K k, V v) {
            this.f77a = k;
            this.f78b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0040c)) {
                return false;
            }
            C0040c c0040c = (C0040c) obj;
            if (!this.f77a.equals(c0040c.f77a) || !this.f78b.equals(c0040c.f78b)) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f77a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f78b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f77a.hashCode() ^ this.f78b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f77a + "=" + this.f78b;
        }
    }

    /* renamed from: androidx.a.a.b.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$d.class */
    public class C0041d implements AbstractC0043f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private C0040c<K, V> f82b;

        /* renamed from: c */
        private boolean f83c = true;

        C0041d() {
            C0037b.this = r4;
        }

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (this.f83c) {
                this.f83c = false;
                this.f82b = C0037b.this.f73a;
            } else {
                C0040c<K, V> c0040c = this.f82b;
                this.f82b = c0040c != null ? c0040c.f79c : null;
            }
            return this.f82b;
        }

        @Override // androidx.p002a.p003a.p005b.C0037b.AbstractC0043f
        /* renamed from: a_ */
        public void mo7999a_(C0040c<K, V> c0040c) {
            C0040c<K, V> c0040c2 = this.f82b;
            if (c0040c == c0040c2) {
                this.f82b = c0040c2.f80d;
                this.f83c = this.f82b == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (!this.f83c) {
                C0040c<K, V> c0040c = this.f82b;
                return (c0040c == null || c0040c.f79c == null) ? false : true;
            }
            if (C0037b.this.f73a == null) {
                z = false;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.a.a.b.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$e.class */
    public static abstract class AbstractC0042e<K, V> implements AbstractC0043f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        C0040c<K, V> f84a;

        /* renamed from: b */
        C0040c<K, V> f85b;

        AbstractC0042e(C0040c<K, V> c0040c, C0040c<K, V> c0040c2) {
            this.f84a = c0040c2;
            this.f85b = c0040c;
        }

        /* renamed from: b */
        private C0040c<K, V> m8001b() {
            C0040c<K, V> c0040c = this.f85b;
            C0040c<K, V> c0040c2 = this.f84a;
            if (c0040c == c0040c2 || c0040c2 == null) {
                return null;
            }
            return mo8002a(c0040c);
        }

        /* renamed from: a */
        abstract C0040c<K, V> mo8002a(C0040c<K, V> c0040c);

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            C0040c<K, V> c0040c = this.f85b;
            this.f85b = m8001b();
            return c0040c;
        }

        @Override // androidx.p002a.p003a.p005b.C0037b.AbstractC0043f
        /* renamed from: a_ */
        public void mo7999a_(C0040c<K, V> c0040c) {
            if (this.f84a == c0040c && c0040c == this.f85b) {
                this.f85b = null;
                this.f84a = null;
            }
            C0040c<K, V> c0040c2 = this.f84a;
            if (c0040c2 == c0040c) {
                this.f84a = mo8000b(c0040c2);
            }
            if (this.f85b == c0040c) {
                this.f85b = m8001b();
            }
        }

        /* renamed from: b */
        abstract C0040c<K, V> mo8000b(C0040c<K, V> c0040c);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f85b != null;
        }
    }

    /* renamed from: androidx.a.a.b.b$f */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$f.class */
    public interface AbstractC0043f<K, V> {
        /* renamed from: a_ */
        void mo7999a_(C0040c<K, V> c0040c);
    }

    /* renamed from: a */
    public int m8013a() {
        return this.f76d;
    }

    /* renamed from: a */
    protected C0040c<K, V> mo8012a(K k) {
        C0040c<K, V> c0040c;
        C0040c<K, V> c0040c2 = this.f73a;
        while (true) {
            c0040c = c0040c2;
            if (c0040c == null || c0040c.f77a.equals(k)) {
                break;
            }
            c0040c2 = c0040c.f79c;
        }
        return c0040c;
    }

    /* renamed from: a */
    public V mo8011a(K k, V v) {
        C0040c<K, V> mo8012a = mo8012a(k);
        if (mo8012a != null) {
            return mo8012a.f78b;
        }
        m8008b(k, v);
        return null;
    }

    /* renamed from: b */
    public C0040c<K, V> m8008b(K k, V v) {
        C0040c<K, V> c0040c = new C0040c<>(k, v);
        this.f76d++;
        C0040c<K, V> c0040c2 = this.f74b;
        if (c0040c2 == null) {
            this.f73a = c0040c;
            this.f74b = this.f73a;
            return c0040c;
        }
        c0040c2.f79c = c0040c;
        c0040c.f80d = c0040c2;
        this.f74b = c0040c;
        return c0040c;
    }

    /* renamed from: b */
    public V mo8009b(K k) {
        C0040c<K, V> mo8012a = mo8012a(k);
        if (mo8012a == null) {
            return null;
        }
        this.f76d--;
        if (!this.f75c.isEmpty()) {
            for (AbstractC0043f<K, V> abstractC0043f : this.f75c.keySet()) {
                abstractC0043f.mo7999a_(mo8012a);
            }
        }
        if (mo8012a.f80d != null) {
            mo8012a.f80d.f79c = mo8012a.f79c;
        } else {
            this.f73a = mo8012a.f79c;
        }
        if (mo8012a.f79c != null) {
            mo8012a.f79c.f80d = mo8012a.f80d;
        } else {
            this.f74b = mo8012a.f80d;
        }
        mo8012a.f79c = null;
        mo8012a.f80d = null;
        return mo8012a.f78b;
    }

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> m8010b() {
        C0039b c0039b = new C0039b(this.f74b, this.f73a);
        this.f75c.put(c0039b, false);
        return c0039b;
    }

    /* renamed from: c */
    public C0037b<K, V>.C0041d m8007c() {
        C0037b<K, V>.C0041d c0041d = new C0041d();
        this.f75c.put(c0041d, false);
        return c0041d;
    }

    /* renamed from: d */
    public Map.Entry<K, V> m8006d() {
        return this.f73a;
    }

    /* renamed from: e */
    public Map.Entry<K, V> m8005e() {
        return this.f74b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0037b)) {
            return false;
        }
        C0037b c0037b = (C0037b) obj;
        if (m8013a() != c0037b.m8013a()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = c0037b.iterator();
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

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        C0038a c0038a = new C0038a(this.f73a, this.f74b);
        this.f75c.put(c0038a, false);
        return c0038a;
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
