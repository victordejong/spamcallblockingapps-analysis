package com.google.common.collect;

import com.google.common.collect.C15403ab;
import com.google.common.collect.C15446ag;
import com.google.common.collect.C15480at;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.common.collect.y */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/y.class */
public abstract class AbstractC15559y<K, V> extends AbstractC15522g<K, V> implements Serializable {

    /* renamed from: b */
    final transient AbstractC15556x<K, ? extends AbstractC15545t<V>> f55869b;

    /* renamed from: c */
    final transient int f55870c;

    /* renamed from: com.google.common.collect.y$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/y$a.class */
    public static class C15562a<K, V> {

        /* renamed from: a */
        Map<K, Collection<V>> f55878a = C15526k.m8778a();

        /* renamed from: b */
        Comparator<? super K> f55879b;

        /* renamed from: c */
        Comparator<? super V> f55880c;

        /* renamed from: a */
        public C15562a<K, V> mo8670a(K k, Iterable<? extends V> iterable) {
            if (k == null) {
                String valueOf = String.valueOf(C15403ab.m8914a(iterable.iterator()));
                throw new NullPointerException(valueOf.length() != 0 ? "null key in entry: null=".concat(valueOf) : new String("null key in entry: null="));
            }
            Collection<V> collection = this.f55878a.get(k);
            if (collection != null) {
                for (V v : iterable) {
                    C15524i.m8780a(k, v);
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
                V next = it2.next();
                C15524i.m8780a(k, next);
                arrayList.add(next);
            }
            this.f55878a.put(k, arrayList);
            return this;
        }

        /* renamed from: b */
        public C15562a<K, V> mo8668b(K k, V... vArr) {
            return mo8670a(k, Arrays.asList(vArr));
        }

        /* renamed from: b */
        public AbstractC15559y<K, V> mo8669b() {
            Collection entrySet = this.f55878a.entrySet();
            Comparator<? super K> comparator = this.f55879b;
            Collection collection = entrySet;
            if (comparator != null) {
                collection = AbstractC15549v.m8724a((Comparator) AbstractC15470an.m8834a(comparator).m8835a(C15446ag.EnumC15449a.KEY), (Iterable) entrySet);
            }
            return C15554w.m8708a(collection, (Comparator) this.f55880c);
        }
    }

    /* renamed from: com.google.common.collect.y$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/y$b.class */
    static final class C15563b<K, V> extends AbstractC15545t<Map.Entry<K, V>> {

        /* renamed from: a */
        final AbstractC15559y<K, V> f55881a;

        C15563b(AbstractC15559y<K, V> abstractC15559y) {
            this.f55881a = abstractC15559y;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: a */
        public final AbstractC15493ay<Map.Entry<K, V>> mo8665a() {
            return this.f55881a.mo8673n();
        }

        @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f55881a.mo8686b(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: f */
        public final boolean mo8666f() {
            return false;
        }

        @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ Iterator iterator() {
            return this.f55881a.mo8673n();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f55881a.f55870c;
        }
    }

    /* renamed from: com.google.common.collect.y$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/y$c.class */
    static final class C15564c {

        /* renamed from: a */
        static final C15480at.C15482a<AbstractC15559y> f55882a = C15480at.m8826a(AbstractC15559y.class, "map");

        /* renamed from: b */
        static final C15480at.C15482a<AbstractC15559y> f55883b = C15480at.m8826a(AbstractC15559y.class, "size");

        C15564c() {
        }
    }

    /* renamed from: com.google.common.collect.y$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/y$d.class */
    static final class C15565d<K, V> extends AbstractC15545t<V> {

        /* renamed from: a */
        private final transient AbstractC15559y<K, V> f55884a;

        C15565d(AbstractC15559y<K, V> abstractC15559y) {
            this.f55884a = abstractC15559y;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: a */
        public final int mo8667a(Object[] objArr, int i) {
            AbstractC15493ay<? extends AbstractC15545t<V>> it2 = this.f55884a.f55869b.values().iterator();
            while (it2.hasNext()) {
                i = it2.next().mo8667a(objArr, i);
            }
            return i;
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: a */
        public final AbstractC15493ay<V> mo8665a() {
            return this.f55884a.mo8676k();
        }

        @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f55884a.mo8687b(obj);
        }

        @Override // com.google.common.collect.AbstractC15545t
        /* renamed from: f */
        public final boolean mo8666f() {
            return true;
        }

        @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ Iterator iterator() {
            return this.f55884a.mo8676k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f55884a.f55870c;
        }
    }

    public AbstractC15559y(AbstractC15556x<K, ? extends AbstractC15545t<V>> abstractC15556x, int i) {
        this.f55869b = abstractC15556x;
        this.f55870c = i;
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    @Deprecated
    /* renamed from: a */
    public final boolean mo8689a(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Map mo8688b() {
        return this.f55869b;
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: b */
    public final boolean mo8687b(Object obj) {
        return obj != null && super.mo8687b(obj);
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo8686b(Object obj, Object obj2) {
        return super.mo8686b(obj, obj2);
    }

    /* renamed from: c */
    public final AbstractC15493ay<Map.Entry<K, V>> mo8673n() {
        return new AbstractC15493ay<Map.Entry<K, V>>() { // from class: com.google.common.collect.y.1

            /* renamed from: a */
            final Iterator<? extends Map.Entry<K, ? extends AbstractC15545t<V>>> f55871a;

            /* renamed from: b */
            K f55872b = null;

            /* renamed from: c */
            Iterator<V> f55873c = C15403ab.C15405a.f55656a;

            {
                AbstractC15559y.this = this;
                this.f55871a = this.f55869b.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f55873c.hasNext() || this.f55871a.hasNext();
            }

            @Override // java.util.Iterator
            public final /* synthetic */ Object next() {
                if (!this.f55873c.hasNext()) {
                    Map.Entry<K, ? extends AbstractC15545t<V>> next = this.f55871a.next();
                    this.f55872b = next.getKey();
                    this.f55873c = next.getValue().iterator();
                }
                return C15446ag.m8846a(this.f55872b, this.f55873c.next());
            }
        };
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    @Deprecated
    /* renamed from: c */
    public final boolean mo8684c(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public final AbstractC15493ay<V> mo8676k() {
        return new AbstractC15493ay<V>() { // from class: com.google.common.collect.y.2

            /* renamed from: a */
            Iterator<? extends AbstractC15545t<V>> f55875a;

            /* renamed from: b */
            Iterator<V> f55876b = C15403ab.C15405a.f55656a;

            {
                AbstractC15559y.this = this;
                this.f55875a = this.f55869b.values().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f55876b.hasNext() || this.f55875a.hasNext();
            }

            @Override // java.util.Iterator
            public final V next() {
                if (!this.f55876b.hasNext()) {
                    this.f55876b = this.f55875a.next().iterator();
                }
                return this.f55876b.next();
            }
        };
    }

    /* renamed from: d */
    public abstract AbstractC15545t<V> mo8690a(K k);

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: e */
    public final int mo8681e() {
        return this.f55870c;
    }

    @Override // com.google.common.collect.AbstractC15518f
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.AbstractC15456ah
    @Deprecated
    /* renamed from: f */
    public final void mo8680f() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: g */
    final Set<K> mo8679g() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.AbstractC15518f
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: i */
    public final /* bridge */ /* synthetic */ Collection mo8678i() {
        return (AbstractC15545t) super.mo8678i();
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: j */
    final /* synthetic */ Collection mo8677j() {
        return new C15565d(this);
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ Collection mo8675l() {
        return (AbstractC15545t) super.mo8675l();
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: m */
    final /* synthetic */ Collection mo8674m() {
        return new C15563b(this);
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: o */
    final Map<K, Collection<V>> mo8672o() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: q */
    public final /* synthetic */ Set mo8671q() {
        return this.f55869b.keySet();
    }

    @Override // com.google.common.collect.AbstractC15518f
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
