package androidx.p010a.p011a.p013b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: androidx.a.a.b.b */
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/b.class */
public class C0105b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: b */
    public C0108c<K, V> f205b;

    /* renamed from: c */
    public C0108c<K, V> f206c;

    /* renamed from: d */
    public WeakHashMap<AbstractC0111f<K, V>, Boolean> f207d = new WeakHashMap<>();

    /* renamed from: e */
    public int f208e = 0;

    /* renamed from: androidx.a.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$a.class */
    public static final class C0106a<K, V> extends AbstractC0110e<K, V> {
        C0106a(C0108c<K, V> c0108c, C0108c<K, V> c0108c2) {
            super(c0108c, c0108c2);
        }

        @Override // androidx.p010a.p011a.p013b.C0105b.AbstractC0110e
        /* renamed from: a */
        final C0108c<K, V> mo46398a(C0108c<K, V> c0108c) {
            return c0108c.f211c;
        }

        @Override // androidx.p010a.p011a.p013b.C0105b.AbstractC0110e
        /* renamed from: b */
        final C0108c<K, V> mo46397b(C0108c<K, V> c0108c) {
            return c0108c.f212d;
        }
    }

    /* renamed from: androidx.a.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$b.class */
    public static final class C0107b<K, V> extends AbstractC0110e<K, V> {
        public C0107b(C0108c<K, V> c0108c, C0108c<K, V> c0108c2) {
            super(c0108c, c0108c2);
        }

        @Override // androidx.p010a.p011a.p013b.C0105b.AbstractC0110e
        /* renamed from: a */
        final C0108c<K, V> mo46398a(C0108c<K, V> c0108c) {
            return c0108c.f212d;
        }

        @Override // androidx.p010a.p011a.p013b.C0105b.AbstractC0110e
        /* renamed from: b */
        final C0108c<K, V> mo46397b(C0108c<K, V> c0108c) {
            return c0108c.f211c;
        }
    }

    /* renamed from: androidx.a.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$c.class */
    public static final class C0108c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        final K f209a;

        /* renamed from: b */
        final V f210b;

        /* renamed from: c */
        C0108c<K, V> f211c;

        /* renamed from: d */
        public C0108c<K, V> f212d;

        C0108c(K k, V v) {
            this.f209a = k;
            this.f210b = v;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0108c)) {
                return false;
            }
            C0108c c0108c = (C0108c) obj;
            return this.f209a.equals(c0108c.f209a) && this.f210b.equals(c0108c.f210b);
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f209a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f210b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f209a.hashCode() ^ this.f210b.hashCode();
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            return this.f209a + "=" + this.f210b;
        }
    }

    /* renamed from: androidx.a.a.b.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$d.class */
    public final class C0109d implements AbstractC0111f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private C0108c<K, V> f214b;

        /* renamed from: c */
        private boolean f215c = true;

        C0109d() {
            C0105b.this = r4;
        }

        @Override // androidx.p010a.p011a.p013b.C0105b.AbstractC0111f
        /* renamed from: a_ */
        public final void mo46396a_(C0108c<K, V> c0108c) {
            C0108c<K, V> c0108c2 = this.f214b;
            if (c0108c == c0108c2) {
                C0108c<K, V> c0108c3 = c0108c2.f212d;
                this.f214b = c0108c3;
                this.f215c = c0108c3 == null;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f215c) {
                return C0105b.this.f205b != null;
            }
            C0108c<K, V> c0108c = this.f214b;
            return (c0108c == null || c0108c.f211c == null) ? false : true;
        }

        @Override // java.util.Iterator
        public final /* bridge */ /* synthetic */ Object next() {
            C0108c<K, V> c0108c;
            if (this.f215c) {
                this.f215c = false;
                c0108c = C0105b.this.f205b;
            } else {
                C0108c<K, V> c0108c2 = this.f214b;
                c0108c = c0108c2 != null ? c0108c2.f211c : null;
            }
            this.f214b = c0108c;
            return c0108c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.a.a.b.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$e.class */
    public static abstract class AbstractC0110e<K, V> implements AbstractC0111f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        C0108c<K, V> f216a;

        /* renamed from: b */
        C0108c<K, V> f217b;

        AbstractC0110e(C0108c<K, V> c0108c, C0108c<K, V> c0108c2) {
            this.f216a = c0108c2;
            this.f217b = c0108c;
        }

        /* renamed from: a */
        private C0108c<K, V> m46399a() {
            C0108c<K, V> c0108c = this.f217b;
            C0108c<K, V> c0108c2 = this.f216a;
            if (c0108c == c0108c2 || c0108c2 == null) {
                return null;
            }
            return mo46398a(c0108c);
        }

        /* renamed from: a */
        abstract C0108c<K, V> mo46398a(C0108c<K, V> c0108c);

        @Override // androidx.p010a.p011a.p013b.C0105b.AbstractC0111f
        /* renamed from: a_ */
        public final void mo46396a_(C0108c<K, V> c0108c) {
            if (this.f216a == c0108c && c0108c == this.f217b) {
                this.f217b = null;
                this.f216a = null;
            }
            C0108c<K, V> c0108c2 = this.f216a;
            if (c0108c2 == c0108c) {
                this.f216a = mo46397b(c0108c2);
            }
            if (this.f217b == c0108c) {
                this.f217b = m46399a();
            }
        }

        /* renamed from: b */
        abstract C0108c<K, V> mo46397b(C0108c<K, V> c0108c);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f217b != null;
        }

        @Override // java.util.Iterator
        public /* synthetic */ Object next() {
            C0108c<K, V> c0108c = this.f217b;
            this.f217b = m46399a();
            return c0108c;
        }
    }

    /* renamed from: androidx.a.a.b.b$f */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$f.class */
    public interface AbstractC0111f<K, V> {
        /* renamed from: a_ */
        void mo46396a_(C0108c<K, V> c0108c);
    }

    /* renamed from: a */
    protected C0108c<K, V> mo46403a(K k) {
        C0108c<K, V> c0108c;
        C0108c<K, V> c0108c2 = this.f205b;
        while (true) {
            c0108c = c0108c2;
            if (c0108c == null || c0108c.f209a.equals(k)) {
                break;
            }
            c0108c2 = c0108c.f211c;
        }
        return c0108c;
    }

    /* renamed from: a */
    public final C0105b<K, V>.C0109d m46404a() {
        C0105b<K, V>.C0109d c0109d = new C0109d();
        this.f207d.put(c0109d, Boolean.FALSE);
        return c0109d;
    }

    /* renamed from: a */
    public V mo46402a(K k, V v) {
        C0108c<K, V> mo46403a = mo46403a(k);
        if (mo46403a != null) {
            return mo46403a.f210b;
        }
        m46400b(k, v);
        return null;
    }

    /* renamed from: b */
    public final C0108c<K, V> m46400b(K k, V v) {
        C0108c<K, V> c0108c = new C0108c<>(k, v);
        this.f208e++;
        C0108c<K, V> c0108c2 = this.f206c;
        if (c0108c2 == null) {
            this.f205b = c0108c;
            this.f206c = c0108c;
            return c0108c;
        }
        c0108c2.f211c = c0108c;
        c0108c.f212d = this.f206c;
        this.f206c = c0108c;
        return c0108c;
    }

    /* renamed from: b */
    public V mo46401b(K k) {
        C0108c<K, V> mo46403a = mo46403a(k);
        if (mo46403a == null) {
            return null;
        }
        this.f208e--;
        if (!this.f207d.isEmpty()) {
            for (AbstractC0111f<K, V> abstractC0111f : this.f207d.keySet()) {
                abstractC0111f.mo46396a_(mo46403a);
            }
        }
        if (mo46403a.f212d != null) {
            mo46403a.f212d.f211c = mo46403a.f211c;
        } else {
            this.f205b = mo46403a.f211c;
        }
        if (mo46403a.f211c != null) {
            mo46403a.f211c.f212d = mo46403a.f212d;
        } else {
            this.f206c = mo46403a.f212d;
        }
        mo46403a.f211c = null;
        mo46403a.f212d = null;
        return mo46403a.f210b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0105b)) {
            return false;
        }
        C0105b c0105b = (C0105b) obj;
        if (this.f208e != c0105b.f208e) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it2 = iterator();
        Iterator<Map.Entry<K, V>> it3 = c0105b.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            Map.Entry<K, V> next2 = it3.next();
            if (next == null && next2 != null) {
                return false;
            }
            if (next != null && !next.equals(next2)) {
                return false;
            }
        }
        return !it2.hasNext() && !it3.hasNext();
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                i = i2 + it2.next().hashCode();
            } else {
                return i2;
            }
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        C0106a c0106a = new C0106a(this.f205b, this.f206c);
        this.f207d.put(c0106a, Boolean.FALSE);
        return c0106a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it2 = iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
