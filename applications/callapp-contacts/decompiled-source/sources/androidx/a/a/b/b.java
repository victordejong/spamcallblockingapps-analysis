package androidx.a.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/b.class */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: b  reason: collision with root package name */
    public c<K, V> f498b;

    /* renamed from: c  reason: collision with root package name */
    public c<K, V> f499c;

    /* renamed from: d  reason: collision with root package name */
    public WeakHashMap<f<K, V>, Boolean> f500d = new WeakHashMap<>();
    public int e = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$a.class */
    public static final class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // androidx.a.a.b.b.e
        final c<K, V> a(c<K, V> cVar) {
            return cVar.f503c;
        }

        @Override // androidx.a.a.b.b.e
        final c<K, V> b(c<K, V> cVar) {
            return cVar.f504d;
        }
    }

    /* renamed from: androidx.a.a.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$b.class */
    public static final class C0014b<K, V> extends e<K, V> {
        public C0014b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // androidx.a.a.b.b.e
        final c<K, V> a(c<K, V> cVar) {
            return cVar.f504d;
        }

        @Override // androidx.a.a.b.b.e
        final c<K, V> b(c<K, V> cVar) {
            return cVar.f503c;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$c.class */
    public static final class c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f501a;

        /* renamed from: b  reason: collision with root package name */
        final V f502b;

        /* renamed from: c  reason: collision with root package name */
        c<K, V> f503c;

        /* renamed from: d  reason: collision with root package name */
        public c<K, V> f504d;

        c(K k, V v) {
            this.f501a = k;
            this.f502b = v;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f501a.equals(cVar.f501a) && this.f502b.equals(cVar.f502b);
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f501a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f502b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f501a.hashCode() ^ this.f502b.hashCode();
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            return this.f501a + "=" + this.f502b;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$d.class */
    public final class d implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private c<K, V> f506b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f507c = true;

        d() {
        }

        @Override // androidx.a.a.b.b.f
        public final void a_(c<K, V> cVar) {
            c<K, V> cVar2 = this.f506b;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.f504d;
                this.f506b = cVar3;
                this.f507c = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f507c) {
                return b.this.f498b != null;
            }
            c<K, V> cVar = this.f506b;
            return (cVar == null || cVar.f503c == null) ? false : true;
        }

        @Override // java.util.Iterator
        public final /* bridge */ /* synthetic */ Object next() {
            c<K, V> cVar;
            if (this.f507c) {
                this.f507c = false;
                cVar = b.this.f498b;
            } else {
                c<K, V> cVar2 = this.f506b;
                cVar = cVar2 != null ? cVar2.f503c : null;
            }
            this.f506b = cVar;
            return cVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$e.class */
    static abstract class e<K, V> implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        c<K, V> f508a;

        /* renamed from: b  reason: collision with root package name */
        c<K, V> f509b;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f508a = cVar2;
            this.f509b = cVar;
        }

        private c<K, V> a() {
            c<K, V> cVar = this.f509b;
            c<K, V> cVar2 = this.f508a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return a(cVar);
        }

        abstract c<K, V> a(c<K, V> cVar);

        @Override // androidx.a.a.b.b.f
        public final void a_(c<K, V> cVar) {
            if (this.f508a == cVar && cVar == this.f509b) {
                this.f509b = null;
                this.f508a = null;
            }
            c<K, V> cVar2 = this.f508a;
            if (cVar2 == cVar) {
                this.f508a = b(cVar2);
            }
            if (this.f509b == cVar) {
                this.f509b = a();
            }
        }

        abstract c<K, V> b(c<K, V> cVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f509b != null;
        }

        @Override // java.util.Iterator
        public /* synthetic */ Object next() {
            c<K, V> cVar = this.f509b;
            this.f509b = a();
            return cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$f.class */
    public interface f<K, V> {
        void a_(c<K, V> cVar);
    }

    protected c<K, V> a(K k) {
        c<K, V> cVar = this.f498b;
        while (cVar != null && !cVar.f501a.equals(k)) {
            cVar = cVar.f503c;
        }
        return cVar;
    }

    public final b<K, V>.d a() {
        b<K, V>.d dVar = new d();
        this.f500d.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public V a(K k, V v) {
        c<K, V> a2 = a(k);
        if (a2 != null) {
            return a2.f502b;
        }
        b(k, v);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c<K, V> b(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.e++;
        c<K, V> cVar2 = this.f499c;
        if (cVar2 == null) {
            this.f498b = cVar;
            this.f499c = cVar;
            return cVar;
        }
        cVar2.f503c = cVar;
        cVar.f504d = this.f499c;
        this.f499c = cVar;
        return cVar;
    }

    public V b(K k) {
        c<K, V> a2 = a(k);
        if (a2 == null) {
            return null;
        }
        this.e--;
        if (!this.f500d.isEmpty()) {
            for (f<K, V> fVar : this.f500d.keySet()) {
                fVar.a_(a2);
            }
        }
        if (a2.f504d != null) {
            a2.f504d.f503c = a2.f503c;
        } else {
            this.f498b = a2.f503c;
        }
        if (a2.f503c != null) {
            a2.f503c.f504d = a2.f504d;
        } else {
            this.f499c = a2.f504d;
        }
        a2.f503c = null;
        a2.f504d = null;
        return a2.f502b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.e != bVar.e) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it2 = iterator();
        Iterator<Map.Entry<K, V>> it3 = bVar.iterator();
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
        while (it2.hasNext()) {
            i += it2.next().hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f498b, this.f499c);
        this.f500d.put(aVar, Boolean.FALSE);
        return aVar;
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
