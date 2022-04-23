package com.google.common.collect;

import com.google.common.collect.ab;
import com.google.common.collect.ag;
import com.google.common.collect.at;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/y.class */
public abstract class y<K, V> extends g<K, V> implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    final transient x<K, ? extends t<V>> f32129b;

    /* renamed from: c  reason: collision with root package name */
    final transient int f32130c;

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/y$a.class */
    public static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        Map<K, Collection<V>> f32138a = k.a();

        /* renamed from: b  reason: collision with root package name */
        Comparator<? super K> f32139b;

        /* renamed from: c  reason: collision with root package name */
        Comparator<? super V> f32140c;

        public a<K, V> a(K k, Iterable<? extends V> iterable) {
            if (k == null) {
                String valueOf = String.valueOf(ab.a(iterable.iterator()));
                throw new NullPointerException(valueOf.length() != 0 ? "null key in entry: null=".concat(valueOf) : new String("null key in entry: null="));
            }
            Collection<V> collection = this.f32138a.get(k);
            if (collection != null) {
                for (V v : iterable) {
                    i.a(k, v);
                    collection.add(v);
                }
                return this;
            }
            Iterator<? extends V> it2 = iterable.iterator();
            if (!it2.hasNext()) {
                return this;
            }
            ArrayList arrayList = new ArrayList();
            while (it2.hasNext()) {
                Object next = it2.next();
                i.a(k, next);
                arrayList.add(next);
            }
            this.f32138a.put(k, arrayList);
            return this;
        }

        public a<K, V> b(K k, V... vArr) {
            return a(k, Arrays.asList(vArr));
        }

        public y<K, V> b() {
            Set<Map.Entry<K, Collection<V>>> entrySet = this.f32138a.entrySet();
            Comparator<? super K> comparator = this.f32139b;
            Collection collection = entrySet;
            if (comparator != null) {
                collection = v.a((Comparator) an.a(comparator).a(ag.a.KEY), (Iterable) entrySet);
            }
            return w.a(collection, (Comparator) this.f32140c);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/y$b.class */
    static final class b<K, V> extends t<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final y<K, V> f32141a;

        b(y<K, V> yVar) {
            this.f32141a = yVar;
        }

        @Override // com.google.common.collect.t
        public final ay<Map.Entry<K, V>> a() {
            return this.f32141a.n();
        }

        @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f32141a.b(entry.getKey(), entry.getValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final boolean f() {
            return false;
        }

        @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ Iterator iterator() {
            return this.f32141a.n();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f32141a.f32130c;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/y$c.class */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final at.a<y> f32142a = at.a(y.class, "map");

        /* renamed from: b  reason: collision with root package name */
        static final at.a<y> f32143b = at.a(y.class, "size");

        c() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/y$d.class */
    static final class d<K, V> extends t<V> {

        /* renamed from: a  reason: collision with root package name */
        private final transient y<K, V> f32144a;

        d(y<K, V> yVar) {
            this.f32144a = yVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final int a(Object[] objArr, int i) {
            ay<? extends t<V>> a2 = this.f32144a.f32129b.values().iterator();
            while (a2.hasNext()) {
                i = ((t) a2.next()).a(objArr, i);
            }
            return i;
        }

        @Override // com.google.common.collect.t
        public final ay<V> a() {
            return this.f32144a.k();
        }

        @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f32144a.b(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t
        public final boolean f() {
            return true;
        }

        @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ Iterator iterator() {
            return this.f32144a.k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f32144a.f32130c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x<K, ? extends t<V>> xVar, int i) {
        this.f32129b = xVar;
        this.f32130c = i;
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    @Deprecated
    public final boolean a(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    public final /* bridge */ /* synthetic */ Map b() {
        return this.f32129b;
    }

    @Override // com.google.common.collect.f
    public final boolean b(Object obj) {
        return obj != null && super.b(obj);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    public final /* bridge */ /* synthetic */ boolean b(Object obj, Object obj2) {
        return super.b(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final ay<Map.Entry<K, V>> n() {
        return new ay<Map.Entry<K, V>>() { // from class: com.google.common.collect.y.1

            /* renamed from: a  reason: collision with root package name */
            final Iterator<? extends Map.Entry<K, ? extends t<V>>> f32131a;

            /* renamed from: b  reason: collision with root package name */
            K f32132b = null;

            /* renamed from: c  reason: collision with root package name */
            Iterator<V> f32133c = ab.a.f31952a;

            {
                this.f32131a = y.this.f32129b.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f32133c.hasNext() || this.f32131a.hasNext();
            }

            @Override // java.util.Iterator
            public final /* synthetic */ Object next() {
                if (!this.f32133c.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f32131a.next();
                    this.f32132b = (K) entry.getKey();
                    this.f32133c = ((t) entry.getValue()).iterator();
                }
                return ag.a(this.f32132b, this.f32133c.next());
            }
        };
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    @Deprecated
    public final boolean c(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final ay<V> k() {
        return new ay<V>() { // from class: com.google.common.collect.y.2

            /* renamed from: a  reason: collision with root package name */
            Iterator<? extends t<V>> f32135a;

            /* renamed from: b  reason: collision with root package name */
            Iterator<V> f32136b = ab.a.f31952a;

            {
                this.f32135a = y.this.f32129b.values().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f32136b.hasNext() || this.f32135a.hasNext();
            }

            @Override // java.util.Iterator
            public final V next() {
                if (!this.f32136b.hasNext()) {
                    this.f32136b = ((t) this.f32135a.next()).iterator();
                }
                return this.f32136b.next();
            }
        };
    }

    /* renamed from: d */
    public abstract t<V> a(K k);

    @Override // com.google.common.collect.ah
    public final int e() {
        return this.f32130c;
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.ah
    @Deprecated
    public final void f() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.f
    final Set<K> g() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    public final /* bridge */ /* synthetic */ Collection i() {
        return (t) super.i();
    }

    @Override // com.google.common.collect.f
    final /* synthetic */ Collection j() {
        return new d(this);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    public final /* bridge */ /* synthetic */ Collection l() {
        return (t) super.l();
    }

    @Override // com.google.common.collect.f
    final /* synthetic */ Collection m() {
        return new b(this);
    }

    @Override // com.google.common.collect.f
    final Map<K, Collection<V>> o() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.f
    public final /* synthetic */ Set q() {
        return this.f32129b.keySet();
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
