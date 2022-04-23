package com.google.common.collect;

import com.google.common.collect.aj;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/f.class */
abstract class f<K, V> implements ah<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private transient Collection<Map.Entry<K, V>> f32077a;

    /* renamed from: b  reason: collision with root package name */
    private transient Set<K> f32078b;

    /* renamed from: c  reason: collision with root package name */
    private transient Collection<V> f32079c;

    /* renamed from: d  reason: collision with root package name */
    private transient Map<K, Collection<V>> f32080d;

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/f$a.class */
    class a extends aj.b<K, V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @Override // com.google.common.collect.aj.b
        final ah<K, V> a() {
            return f.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return f.this.n();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/f$b.class */
    final class b extends f<K, V>.a implements Set<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(f fVar) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return av.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return av.a(this);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/f$c.class */
    final class c extends AbstractCollection<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            f.this.f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return f.this.b(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return f.this.k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return f.this.e();
        }
    }

    @Override // com.google.common.collect.ah
    public boolean a(K k, V v) {
        return a(k).add(v);
    }

    @Override // com.google.common.collect.ah
    public Map<K, Collection<V>> b() {
        Map<K, Collection<V>> map = this.f32080d;
        Map<K, Collection<V>> map2 = map;
        if (map == null) {
            map2 = o();
            this.f32080d = map2;
        }
        return map2;
    }

    public boolean b(Object obj) {
        for (Collection<V> collection : b().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ah
    public boolean b(Object obj, Object obj2) {
        Collection<V> collection = b().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.common.collect.ah
    public boolean c(Object obj, Object obj2) {
        Collection<V> collection = b().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ah) {
            return b().equals(((ah) obj).b());
        }
        return false;
    }

    abstract Set<K> g();

    public int hashCode() {
        return b().hashCode();
    }

    @Override // com.google.common.collect.ah
    public Collection<V> i() {
        Collection<V> collection = this.f32079c;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = j();
            this.f32079c = collection2;
        }
        return collection2;
    }

    abstract Collection<V> j();

    Iterator<V> k() {
        return ag.a(l().iterator());
    }

    @Override // com.google.common.collect.ah
    public Collection<Map.Entry<K, V>> l() {
        Collection<Map.Entry<K, V>> collection = this.f32077a;
        Collection<Map.Entry<K, V>> collection2 = collection;
        if (collection == null) {
            collection2 = m();
            this.f32077a = collection2;
        }
        return collection2;
    }

    abstract Collection<Map.Entry<K, V>> m();

    abstract Iterator<Map.Entry<K, V>> n();

    abstract Map<K, Collection<V>> o();

    public Set<K> q() {
        Set<K> set = this.f32078b;
        Set<K> set2 = set;
        if (set == null) {
            set2 = g();
            this.f32078b = set2;
        }
        return set2;
    }

    public String toString() {
        return b().toString();
    }
}
