package com.google.a.b;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/a/b/ac.class */
public final class ac<K, V> extends n<K, V> {

    /* renamed from: a  reason: collision with root package name */
    final transient K f3680a;

    /* renamed from: b  reason: collision with root package name */
    final transient V f3681b;
    private transient Map.Entry<K, V> c;
    private transient o<Map.Entry<K, V>> d;
    private transient o<K> e;
    private transient k<V> f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/ac$a.class */
    public static final class a<V> extends k<V> {

        /* renamed from: a  reason: collision with root package name */
        final V f3682a;

        a(V v) {
            this.f3682a = v;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.a.b.k
        public final boolean a() {
            return true;
        }

        @Override // com.google.a.b.k
        public final ae<V> b() {
            return q.a(this.f3682a);
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return this.f3682a.equals(obj);
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.lang.Iterable, java.util.List
        public final /* synthetic */ Iterator iterator() {
            return q.a(this.f3682a);
        }

        @Override // java.util.Collection
        public final int size() {
            return 1;
        }
    }

    public ac(Map.Entry<K, V> entry) {
        this.c = entry;
        this.f3680a = entry.getKey();
        this.f3681b = entry.getValue();
    }

    @Override // com.google.a.b.n
    /* renamed from: a */
    public final o<Map.Entry<K, V>> entrySet() {
        o<Map.Entry<K, V>> oVar = this.d;
        o<Map.Entry<K, V>> oVar2 = oVar;
        if (oVar == null) {
            Map.Entry<K, V> entry = this.c;
            Map.Entry<K, V> entry2 = entry;
            if (entry == null) {
                entry2 = s.a(this.f3680a, this.f3681b);
                this.c = entry2;
            }
            oVar2 = o.a(entry2);
            this.d = oVar2;
        }
        return oVar2;
    }

    @Override // com.google.a.b.n
    /* renamed from: b */
    public final o<K> keySet() {
        o<K> oVar = this.e;
        o<K> oVar2 = oVar;
        if (oVar == null) {
            oVar2 = o.a(this.f3680a);
            this.e = oVar2;
        }
        return oVar2;
    }

    @Override // com.google.a.b.n
    /* renamed from: c */
    public final k<V> values() {
        k<V> kVar = this.f;
        k<V> kVar2 = kVar;
        if (kVar == null) {
            kVar2 = new a<>(this.f3681b);
            this.f = kVar2;
        }
        return kVar2;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f3680a.equals(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f3681b.equals(obj);
    }

    @Override // com.google.a.b.n, java.util.Map
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.size() != 1) {
                z = false;
            } else {
                Map.Entry<K, V> next = map.entrySet().iterator().next();
                z = this.f3680a.equals(next.getKey()) && this.f3681b.equals(next.getValue());
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final V get(Object obj) {
        return this.f3680a.equals(obj) ? this.f3681b : null;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final int hashCode() {
        return this.f3680a.hashCode() ^ this.f3681b.hashCode();
    }

    @Override // com.google.a.b.n, java.util.Map
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.Map
    public final int size() {
        return 1;
    }

    @Override // com.google.a.b.n
    public final String toString() {
        return "{" + this.f3680a.toString() + '=' + this.f3681b.toString() + '}';
    }
}
