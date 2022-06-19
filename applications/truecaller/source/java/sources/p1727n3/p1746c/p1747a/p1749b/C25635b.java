package p1727n3.p1746c.p1747a.p1749b;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.c.a.b.b */
/* loaded from: classes-dex2jar.jar:n3/c/a/b/b.class */
public class C25635b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    public C25636c<K, V> f71810a;

    /* renamed from: b */
    public C25636c<K, V> f71811b;

    /* renamed from: c */
    public WeakHashMap<AbstractC25639f<K, V>, Boolean> f71812c = new WeakHashMap<>();

    /* renamed from: d */
    public int f71813d = 0;

    /* renamed from: n3.c.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:n3/c/a/b/b$c.class */
    public static class C25636c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        public final K f71814a;

        /* renamed from: b */
        public final V f71815b;

        /* renamed from: c */
        public C25636c<K, V> f71816c;

        /* renamed from: d */
        public C25636c<K, V> f71817d;

        public C25636c(K k, V v) {
            this.f71814a = k;
            this.f71815b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C25636c)) {
                return false;
            }
            C25636c c25636c = (C25636c) obj;
            if (!this.f71814a.equals(c25636c.f71814a) || !this.f71815b.equals(c25636c.f71815b)) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f71814a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f71815b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f71814a.hashCode() ^ this.f71815b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f71814a + ContainerUtils.KEY_VALUE_DELIMITER + this.f71815b;
        }
    }

    /* renamed from: n3.c.a.b.b$d */
    /* loaded from: classes-dex2jar.jar:n3/c/a/b/b$d.class */
    public class C25637d implements Iterator<Map.Entry<K, V>>, AbstractC25639f<K, V> {

        /* renamed from: a */
        public C25636c<K, V> f71818a;

        /* renamed from: b */
        public boolean f71819b = true;

        public C25637d() {
            C25635b.this = r4;
        }

        @Override // p1727n3.p1746c.p1747a.p1749b.C25635b.AbstractC25639f
        /* renamed from: a */
        public void mo3100a(C25636c<K, V> c25636c) {
            C25636c<K, V> c25636c2 = this.f71818a;
            if (c25636c == c25636c2) {
                C25636c<K, V> c25636c3 = c25636c2.f71817d;
                this.f71818a = c25636c3;
                this.f71819b = c25636c3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (!this.f71819b) {
                C25636c<K, V> c25636c = this.f71818a;
                return (c25636c == null || c25636c.f71816c == null) ? false : true;
            }
            if (C25635b.this.f71810a == null) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f71819b) {
                this.f71819b = false;
                this.f71818a = C25635b.this.f71810a;
            } else {
                C25636c<K, V> c25636c = this.f71818a;
                this.f71818a = c25636c != null ? c25636c.f71816c : null;
            }
            return this.f71818a;
        }
    }

    /* renamed from: n3.c.a.b.b$e */
    /* loaded from: classes-dex2jar.jar:n3/c/a/b/b$e.class */
    public static abstract class AbstractC25638e<K, V> implements Iterator<Map.Entry<K, V>>, AbstractC25639f<K, V> {

        /* renamed from: a */
        public C25636c<K, V> f71821a;

        /* renamed from: b */
        public C25636c<K, V> f71822b;

        public AbstractC25638e(C25636c<K, V> c25636c, C25636c<K, V> c25636c2) {
            this.f71821a = c25636c2;
            this.f71822b = c25636c;
        }

        @Override // p1727n3.p1746c.p1747a.p1749b.C25635b.AbstractC25639f
        /* renamed from: a */
        public void mo3100a(C25636c<K, V> c25636c) {
            if (this.f71821a == c25636c && c25636c == this.f71822b) {
                this.f71822b = null;
                this.f71821a = null;
            }
            C25636c<K, V> c25636c2 = this.f71821a;
            if (c25636c2 == c25636c) {
                this.f71821a = m3102b(c25636c2);
            }
            C25636c<K, V> c25636c3 = this.f71822b;
            if (c25636c3 == c25636c) {
                C25636c<K, V> c25636c4 = this.f71821a;
                C25636c<K, V> c25636c5 = null;
                if (c25636c3 != c25636c4) {
                    c25636c5 = c25636c4 == null ? null : m3101c(c25636c3);
                }
                this.f71822b = c25636c5;
            }
        }

        /* renamed from: b */
        public abstract C25636c<K, V> m3102b(C25636c<K, V> c25636c);

        /* renamed from: c */
        public abstract C25636c<K, V> m3101c(C25636c<K, V> c25636c);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f71822b != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            C25636c<K, V> c25636c = this.f71822b;
            C25636c<K, V> c25636c2 = this.f71821a;
            this.f71822b = (c25636c == c25636c2 || c25636c2 == null) ? null : m3101c(c25636c);
            return c25636c;
        }
    }

    /* renamed from: n3.c.a.b.b$f */
    /* loaded from: classes-dex2jar.jar:n3/c/a/b/b$f.class */
    public interface AbstractC25639f<K, V> {
        /* renamed from: a */
        void mo3100a(C25636c<K, V> c25636c);
    }

    /* renamed from: a */
    public C25636c<K, V> mo3107a(K k) {
        C25636c<K, V> c25636c;
        C25636c<K, V> c25636c2 = this.f71810a;
        while (true) {
            c25636c = c25636c2;
            if (c25636c == null || c25636c.f71814a.equals(k)) {
                break;
            }
            c25636c2 = c25636c.f71816c;
        }
        return c25636c;
    }

    /* renamed from: b */
    public C25635b<K, V>.C25637d m3106b() {
        C25635b<K, V>.C25637d c25637d = new C25637d();
        this.f71812c.put(c25637d, Boolean.FALSE);
        return c25637d;
    }

    /* renamed from: c */
    public C25636c<K, V> m3105c(K k, V v) {
        C25636c<K, V> c25636c = new C25636c<>(k, v);
        this.f71813d++;
        C25636c<K, V> c25636c2 = this.f71811b;
        if (c25636c2 == null) {
            this.f71810a = c25636c;
            this.f71811b = c25636c;
            return c25636c;
        }
        c25636c2.f71816c = c25636c;
        c25636c.f71817d = c25636c2;
        this.f71811b = c25636c;
        return c25636c;
    }

    /* renamed from: d */
    public V mo3104d(K k, V v) {
        C25636c<K, V> mo3107a = mo3107a(k);
        if (mo3107a != null) {
            return mo3107a.f71815b;
        }
        m3105c(k, v);
        return null;
    }

    /* renamed from: e */
    public V mo3103e(K k) {
        C25636c<K, V> mo3107a = mo3107a(k);
        if (mo3107a == null) {
            return null;
        }
        this.f71813d--;
        if (!this.f71812c.isEmpty()) {
            for (AbstractC25639f<K, V> abstractC25639f : this.f71812c.keySet()) {
                abstractC25639f.mo3100a(mo3107a);
            }
        }
        C25636c<K, V> c25636c = mo3107a.f71817d;
        if (c25636c != null) {
            c25636c.f71816c = mo3107a.f71816c;
        } else {
            this.f71810a = mo3107a.f71816c;
        }
        C25636c<K, V> c25636c2 = mo3107a.f71816c;
        if (c25636c2 != null) {
            c25636c2.f71817d = c25636c;
        } else {
            this.f71811b = c25636c;
        }
        mo3107a.f71816c = null;
        mo3107a.f71817d = null;
        return mo3107a.f71815b;
    }

    public boolean equals(Object obj) {
        AbstractC25638e abstractC25638e;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C25635b)) {
            return false;
        }
        C25635b c25635b = (C25635b) obj;
        if (this.f71813d != c25635b.f71813d) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = c25635b.iterator();
        while (true) {
            abstractC25638e = (AbstractC25638e) it;
            if (!abstractC25638e.hasNext()) {
                break;
            }
            AbstractC25638e abstractC25638e2 = (AbstractC25638e) it2;
            if (!abstractC25638e2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) abstractC25638e.next();
            Object next = abstractC25638e2.next();
            if (entry == null && next != null) {
                return false;
            }
            if (entry != null && !entry.equals(next)) {
                return false;
            }
        }
        if (abstractC25638e.hasNext() || ((AbstractC25638e) it2).hasNext()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            AbstractC25638e abstractC25638e = (AbstractC25638e) it;
            if (abstractC25638e.hasNext()) {
                i = i2 + ((Map.Entry) abstractC25638e.next()).hashCode();
            } else {
                return i2;
            }
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f71810a, this.f71811b);
        this.f71812c.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (true) {
            AbstractC25638e abstractC25638e = (AbstractC25638e) it;
            if (!abstractC25638e.hasNext()) {
                m8728C.append("]");
                return m8728C.toString();
            }
            m8728C.append(((Map.Entry) abstractC25638e.next()).toString());
            if (abstractC25638e.hasNext()) {
                m8728C.append(", ");
            }
        }
    }
}
