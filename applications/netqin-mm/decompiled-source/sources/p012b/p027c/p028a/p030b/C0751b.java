package p012b.p027c.p028a.p030b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: b.c.a.b.b */
/* loaded from: classes-dex2jar.jar:b/c/a/b/b.class */
public class C0751b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    public C0754c<K, V> f3607a;

    /* renamed from: b */
    public C0754c<K, V> f3608b;

    /* renamed from: c */
    public WeakHashMap<AbstractC0757f<K, V>, Boolean> f3609c = new WeakHashMap<>();

    /* renamed from: d */
    public int f3610d = 0;

    /* renamed from: b.c.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:b/c/a/b/b$a.class */
    public static class C0752a<K, V> extends AbstractC0756e<K, V> {
        public C0752a(C0754c<K, V> cVar, C0754c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // p012b.p027c.p028a.p030b.C0751b.AbstractC0756e
        /* renamed from: b */
        public C0754c<K, V> mo36136b(C0754c<K, V> cVar) {
            return cVar.f3614d;
        }

        @Override // p012b.p027c.p028a.p030b.C0751b.AbstractC0756e
        /* renamed from: c */
        public C0754c<K, V> mo36135c(C0754c<K, V> cVar) {
            return cVar.f3613c;
        }
    }

    /* renamed from: b.c.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:b/c/a/b/b$b.class */
    public static class C0753b<K, V> extends AbstractC0756e<K, V> {
        public C0753b(C0754c<K, V> cVar, C0754c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // p012b.p027c.p028a.p030b.C0751b.AbstractC0756e
        /* renamed from: b */
        public C0754c<K, V> mo36136b(C0754c<K, V> cVar) {
            return cVar.f3613c;
        }

        @Override // p012b.p027c.p028a.p030b.C0751b.AbstractC0756e
        /* renamed from: c */
        public C0754c<K, V> mo36135c(C0754c<K, V> cVar) {
            return cVar.f3614d;
        }
    }

    /* renamed from: b.c.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:b/c/a/b/b$c.class */
    public static class C0754c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        public final K f3611a;

        /* renamed from: b */
        public final V f3612b;

        /* renamed from: c */
        public C0754c<K, V> f3613c;

        /* renamed from: d */
        public C0754c<K, V> f3614d;

        public C0754c(K k, V v) {
            this.f3611a = k;
            this.f3612b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0754c)) {
                return false;
            }
            C0754c cVar = (C0754c) obj;
            if (!this.f3611a.equals(cVar.f3611a) || !this.f3612b.equals(cVar.f3612b)) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f3611a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f3612b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f3611a.hashCode() ^ this.f3612b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f3611a + "=" + this.f3612b;
        }
    }

    /* renamed from: b.c.a.b.b$d */
    /* loaded from: classes-dex2jar.jar:b/c/a/b/b$d.class */
    public class C0755d implements Iterator<Map.Entry<K, V>>, AbstractC0757f<K, V> {

        /* renamed from: a */
        public C0754c<K, V> f3615a;

        /* renamed from: b */
        public boolean f3616b = true;

        public C0755d() {
        }

        @Override // p012b.p027c.p028a.p030b.C0751b.AbstractC0757f
        /* renamed from: a */
        public void mo36134a(C0754c<K, V> cVar) {
            C0754c<K, V> cVar2 = this.f3615a;
            if (cVar == cVar2) {
                C0754c<K, V> cVar3 = cVar2.f3614d;
                this.f3615a = cVar3;
                this.f3616b = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            boolean z2 = true;
            if (this.f3616b) {
                if (C0751b.this.f3607a == null) {
                    z2 = false;
                }
                return z2;
            }
            C0754c<K, V> cVar = this.f3615a;
            if (cVar == null || cVar.f3613c == null) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (this.f3616b) {
                this.f3616b = false;
                this.f3615a = C0751b.this.f3607a;
            } else {
                C0754c<K, V> cVar = this.f3615a;
                this.f3615a = cVar != null ? cVar.f3613c : null;
            }
            return this.f3615a;
        }
    }

    /* renamed from: b.c.a.b.b$e */
    /* loaded from: classes-dex2jar.jar:b/c/a/b/b$e.class */
    public static abstract class AbstractC0756e<K, V> implements Iterator<Map.Entry<K, V>>, AbstractC0757f<K, V> {

        /* renamed from: a */
        public C0754c<K, V> f3618a;

        /* renamed from: b */
        public C0754c<K, V> f3619b;

        public AbstractC0756e(C0754c<K, V> cVar, C0754c<K, V> cVar2) {
            this.f3618a = cVar2;
            this.f3619b = cVar;
        }

        /* renamed from: a */
        public final C0754c<K, V> m36137a() {
            C0754c<K, V> cVar = this.f3619b;
            C0754c<K, V> cVar2 = this.f3618a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return mo36135c(cVar);
        }

        @Override // p012b.p027c.p028a.p030b.C0751b.AbstractC0757f
        /* renamed from: a */
        public void mo36134a(C0754c<K, V> cVar) {
            if (this.f3618a == cVar && cVar == this.f3619b) {
                this.f3619b = null;
                this.f3618a = null;
            }
            C0754c<K, V> cVar2 = this.f3618a;
            if (cVar2 == cVar) {
                this.f3618a = mo36136b(cVar2);
            }
            if (this.f3619b == cVar) {
                this.f3619b = m36137a();
            }
        }

        /* renamed from: b */
        public abstract C0754c<K, V> mo36136b(C0754c<K, V> cVar);

        /* renamed from: c */
        public abstract C0754c<K, V> mo36135c(C0754c<K, V> cVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3619b != null;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            C0754c<K, V> cVar = this.f3619b;
            this.f3619b = m36137a();
            return cVar;
        }
    }

    /* renamed from: b.c.a.b.b$f */
    /* loaded from: classes-dex2jar.jar:b/c/a/b/b$f.class */
    public interface AbstractC0757f<K, V> {
        /* renamed from: a */
        void mo36134a(C0754c<K, V> cVar);
    }

    /* renamed from: a */
    public C0754c<K, V> mo36142a(K k) {
        C0754c<K, V> cVar = this.f3607a;
        while (cVar != null && !cVar.f3611a.equals(k)) {
            cVar = cVar.f3613c;
        }
        return cVar;
    }

    /* renamed from: a */
    public C0754c<K, V> m36141a(K k, V v) {
        C0754c<K, V> cVar = new C0754c<>(k, v);
        this.f3610d++;
        C0754c<K, V> cVar2 = this.f3608b;
        if (cVar2 == null) {
            this.f3607a = cVar;
            this.f3608b = cVar;
            return cVar;
        }
        cVar2.f3613c = cVar;
        cVar.f3614d = cVar2;
        this.f3608b = cVar;
        return cVar;
    }

    /* renamed from: a */
    public Map.Entry<K, V> m36143a() {
        return this.f3607a;
    }

    /* renamed from: b */
    public C0751b<K, V>.C0755d m36140b() {
        C0751b<K, V>.C0755d dVar = new C0755d();
        this.f3609c.put(dVar, false);
        return dVar;
    }

    /* renamed from: b */
    public V mo36139b(K k, V v) {
        C0754c<K, V> a = mo36142a(k);
        if (a != null) {
            return a.f3612b;
        }
        m36141a(k, v);
        return null;
    }

    /* renamed from: c */
    public Map.Entry<K, V> m36138c() {
        return this.f3608b;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C0753b bVar = new C0753b(this.f3608b, this.f3607a);
        this.f3609c.put(bVar, false);
        return bVar;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0751b)) {
            return false;
        }
        C0751b bVar = (C0751b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
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
        while (it.hasNext()) {
            i += it.next().hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        C0752a aVar = new C0752a(this.f3607a, this.f3608b);
        this.f3609c.put(aVar, false);
        return aVar;
    }

    public V remove(K k) {
        C0754c<K, V> a = mo36142a(k);
        if (a == null) {
            return null;
        }
        this.f3610d--;
        if (!this.f3609c.isEmpty()) {
            for (AbstractC0757f<K, V> fVar : this.f3609c.keySet()) {
                fVar.mo36134a(a);
            }
        }
        C0754c<K, V> cVar = a.f3614d;
        if (cVar != null) {
            cVar.f3613c = a.f3613c;
        } else {
            this.f3607a = a.f3613c;
        }
        C0754c<K, V> cVar2 = a.f3613c;
        if (cVar2 != null) {
            cVar2.f3614d = a.f3614d;
        } else {
            this.f3608b = a.f3614d;
        }
        a.f3613c = null;
        a.f3614d = null;
        return a.f3612b;
    }

    public int size() {
        return this.f3610d;
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
