package p173n;

import android.support.p012v4.media.C0082b;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: n.b */
/* loaded from: classes-dex2jar.jar:n/b.class */
public class C3686b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    public C3689c<K, V> f12053a;

    /* renamed from: b */
    public C3689c<K, V> f12054b;

    /* renamed from: c */
    public WeakHashMap<AbstractC3692f<K, V>, Boolean> f12055c = new WeakHashMap<>();

    /* renamed from: d */
    public int f12056d = 0;

    /* renamed from: n.b$a */
    /* loaded from: classes-dex2jar.jar:n/b$a.class */
    public static class C3687a<K, V> extends AbstractC3691e<K, V> {
        public C3687a(C3689c<K, V> c3689c, C3689c<K, V> c3689c2) {
            super(c3689c, c3689c2);
        }

        @Override // p173n.C3686b.AbstractC3691e
        /* renamed from: b */
        public C3689c<K, V> mo1886b(C3689c<K, V> c3689c) {
            return c3689c.f12060d;
        }

        @Override // p173n.C3686b.AbstractC3691e
        /* renamed from: c */
        public C3689c<K, V> mo1885c(C3689c<K, V> c3689c) {
            return c3689c.f12059c;
        }
    }

    /* renamed from: n.b$b */
    /* loaded from: classes-dex2jar.jar:n/b$b.class */
    public static class C3688b<K, V> extends AbstractC3691e<K, V> {
        public C3688b(C3689c<K, V> c3689c, C3689c<K, V> c3689c2) {
            super(c3689c, c3689c2);
        }

        @Override // p173n.C3686b.AbstractC3691e
        /* renamed from: b */
        public C3689c<K, V> mo1886b(C3689c<K, V> c3689c) {
            return c3689c.f12059c;
        }

        @Override // p173n.C3686b.AbstractC3691e
        /* renamed from: c */
        public C3689c<K, V> mo1885c(C3689c<K, V> c3689c) {
            return c3689c.f12060d;
        }
    }

    /* renamed from: n.b$c */
    /* loaded from: classes-dex2jar.jar:n/b$c.class */
    public static class C3689c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        public final K f12057a;

        /* renamed from: b */
        public final V f12058b;

        /* renamed from: c */
        public C3689c<K, V> f12059c;

        /* renamed from: d */
        public C3689c<K, V> f12060d;

        public C3689c(K k, V v) {
            this.f12057a = k;
            this.f12058b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C3689c)) {
                return false;
            }
            C3689c c3689c = (C3689c) obj;
            if (!this.f12057a.equals(c3689c.f12057a) || !this.f12058b.equals(c3689c.f12058b)) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f12057a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f12058b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f12057a.hashCode() ^ this.f12058b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f12057a + "=" + this.f12058b;
        }
    }

    /* renamed from: n.b$d */
    /* loaded from: classes-dex2jar.jar:n/b$d.class */
    public class C3690d implements Iterator<Map.Entry<K, V>>, AbstractC3692f<K, V> {

        /* renamed from: a */
        public C3689c<K, V> f12061a;

        /* renamed from: b */
        public boolean f12062b = true;

        public C3690d() {
            C3686b.this = r4;
        }

        @Override // p173n.C3686b.AbstractC3692f
        /* renamed from: a */
        public void mo1884a(C3689c<K, V> c3689c) {
            C3689c<K, V> c3689c2 = this.f12061a;
            if (c3689c == c3689c2) {
                C3689c<K, V> c3689c3 = c3689c2.f12060d;
                this.f12061a = c3689c3;
                this.f12062b = c3689c3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (!this.f12062b) {
                C3689c<K, V> c3689c = this.f12061a;
                return (c3689c == null || c3689c.f12059c == null) ? false : true;
            }
            if (C3686b.this.f12053a == null) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f12062b) {
                this.f12062b = false;
                this.f12061a = C3686b.this.f12053a;
            } else {
                C3689c<K, V> c3689c = this.f12061a;
                this.f12061a = c3689c != null ? c3689c.f12059c : null;
            }
            return this.f12061a;
        }
    }

    /* renamed from: n.b$e */
    /* loaded from: classes-dex2jar.jar:n/b$e.class */
    public static abstract class AbstractC3691e<K, V> implements Iterator<Map.Entry<K, V>>, AbstractC3692f<K, V> {

        /* renamed from: a */
        public C3689c<K, V> f12064a;

        /* renamed from: b */
        public C3689c<K, V> f12065b;

        public AbstractC3691e(C3689c<K, V> c3689c, C3689c<K, V> c3689c2) {
            this.f12064a = c3689c2;
            this.f12065b = c3689c;
        }

        @Override // p173n.C3686b.AbstractC3692f
        /* renamed from: a */
        public void mo1884a(C3689c<K, V> c3689c) {
            if (this.f12064a == c3689c && c3689c == this.f12065b) {
                this.f12065b = null;
                this.f12064a = null;
            }
            C3689c<K, V> c3689c2 = this.f12064a;
            if (c3689c2 == c3689c) {
                this.f12064a = mo1886b(c3689c2);
            }
            C3689c<K, V> c3689c3 = this.f12065b;
            if (c3689c3 == c3689c) {
                C3689c<K, V> c3689c4 = this.f12064a;
                C3689c<K, V> c3689c5 = null;
                if (c3689c3 != c3689c4) {
                    c3689c5 = c3689c4 == null ? null : mo1885c(c3689c3);
                }
                this.f12065b = c3689c5;
            }
        }

        /* renamed from: b */
        public abstract C3689c<K, V> mo1886b(C3689c<K, V> c3689c);

        /* renamed from: c */
        public abstract C3689c<K, V> mo1885c(C3689c<K, V> c3689c);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12065b != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            C3689c<K, V> c3689c = this.f12065b;
            C3689c<K, V> c3689c2 = this.f12064a;
            this.f12065b = (c3689c == c3689c2 || c3689c2 == null) ? null : mo1885c(c3689c);
            return c3689c;
        }
    }

    /* renamed from: n.b$f */
    /* loaded from: classes-dex2jar.jar:n/b$f.class */
    public interface AbstractC3692f<K, V> {
        /* renamed from: a */
        void mo1884a(C3689c<K, V> c3689c);
    }

    /* renamed from: a */
    public C3689c<K, V> mo1891a(K k) {
        C3689c<K, V> c3689c;
        C3689c<K, V> c3689c2 = this.f12053a;
        while (true) {
            c3689c = c3689c2;
            if (c3689c == null || c3689c.f12057a.equals(k)) {
                break;
            }
            c3689c2 = c3689c.f12059c;
        }
        return c3689c;
    }

    /* renamed from: b */
    public C3686b<K, V>.C3690d m1890b() {
        C3686b<K, V>.C3690d c3690d = new C3690d();
        this.f12055c.put(c3690d, Boolean.FALSE);
        return c3690d;
    }

    /* renamed from: c */
    public C3689c<K, V> m1889c(K k, V v) {
        C3689c<K, V> c3689c = new C3689c<>(k, v);
        this.f12056d++;
        C3689c<K, V> c3689c2 = this.f12054b;
        if (c3689c2 == null) {
            this.f12053a = c3689c;
            this.f12054b = c3689c;
            return c3689c;
        }
        c3689c2.f12059c = c3689c;
        c3689c.f12060d = c3689c2;
        this.f12054b = c3689c;
        return c3689c;
    }

    /* renamed from: d */
    public V mo1888d(K k, V v) {
        C3689c<K, V> mo1891a = mo1891a(k);
        if (mo1891a != null) {
            return mo1891a.f12058b;
        }
        m1889c(k, v);
        return null;
    }

    /* renamed from: e */
    public V mo1887e(K k) {
        C3689c<K, V> mo1891a = mo1891a(k);
        if (mo1891a == null) {
            return null;
        }
        this.f12056d--;
        if (!this.f12055c.isEmpty()) {
            for (AbstractC3692f<K, V> abstractC3692f : this.f12055c.keySet()) {
                abstractC3692f.mo1884a(mo1891a);
            }
        }
        C3689c<K, V> c3689c = mo1891a.f12060d;
        if (c3689c != null) {
            c3689c.f12059c = mo1891a.f12059c;
        } else {
            this.f12053a = mo1891a.f12059c;
        }
        C3689c<K, V> c3689c2 = mo1891a.f12059c;
        if (c3689c2 != null) {
            c3689c2.f12060d = c3689c;
        } else {
            this.f12054b = c3689c;
        }
        mo1891a.f12059c = null;
        mo1891a.f12060d = null;
        return mo1891a.f12058b;
    }

    public boolean equals(Object obj) {
        AbstractC3691e abstractC3691e;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3686b)) {
            return false;
        }
        C3686b c3686b = (C3686b) obj;
        if (this.f12056d != c3686b.f12056d) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it2 = iterator();
        Iterator<Map.Entry<K, V>> it3 = c3686b.iterator();
        while (true) {
            abstractC3691e = (AbstractC3691e) it2;
            if (!abstractC3691e.hasNext()) {
                break;
            }
            AbstractC3691e abstractC3691e2 = (AbstractC3691e) it3;
            if (!abstractC3691e2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) abstractC3691e.next();
            Object next = abstractC3691e2.next();
            if (entry == null && next != null) {
                return false;
            }
            if (entry != null && !entry.equals(next)) {
                return false;
            }
        }
        if (abstractC3691e.hasNext() || ((AbstractC3691e) it3).hasNext()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            AbstractC3691e abstractC3691e = (AbstractC3691e) it2;
            if (abstractC3691e.hasNext()) {
                i = i2 + ((Map.Entry) abstractC3691e.next()).hashCode();
            } else {
                return i2;
            }
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        C3687a c3687a = new C3687a(this.f12053a, this.f12054b);
        this.f12055c.put(c3687a, Boolean.FALSE);
        return c3687a;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("[");
        Iterator<Map.Entry<K, V>> it2 = iterator();
        while (true) {
            AbstractC3691e abstractC3691e = (AbstractC3691e) it2;
            if (!abstractC3691e.hasNext()) {
                m8752j.append("]");
                return m8752j.toString();
            }
            m8752j.append(((Map.Entry) abstractC3691e.next()).toString());
            if (abstractC3691e.hasNext()) {
                m8752j.append(", ");
            }
        }
    }
}
