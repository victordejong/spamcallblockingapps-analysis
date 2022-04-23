package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import p131c.p161d.p266c.p269c.AbstractC4960b;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMap.class */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    public static final Map.Entry<?, ?>[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];
    public transient ImmutableSet<Map.Entry<K, V>> entrySet;
    public transient ImmutableSet<K> keySet;
    public transient ImmutableSetMultimap<K, V> multimapView;
    public transient ImmutableCollection<V> values;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap.class */
    public static abstract class IteratorBasedImmutableMap<K, V> extends ImmutableMap<K, V> {
        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
            return new ImmutableMapEntrySet<K, V>() { // from class: com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap.1EntrySetImpl
                @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
                public AbstractC4978e1<Map.Entry<K, V>> iterator() {
                    return IteratorBasedImmutableMap.this.entryIterator();
                }

                @Override // com.google.common.collect.ImmutableMapEntrySet
                public ImmutableMap<K, V> map() {
                    return IteratorBasedImmutableMap.this;
                }
            };
        }

        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<K> createKeySet() {
            return new ImmutableMapKeySet(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        public ImmutableCollection<V> createValues() {
            return new ImmutableMapValues(this);
        }

        public abstract AbstractC4978e1<Map.Entry<K, V>> entryIterator();

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set entrySet() {
            return ImmutableMap.super.entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set keySet() {
            return ImmutableMap.super.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map, p131c.p161d.p266c.p269c.AbstractC4999k
        public /* bridge */ /* synthetic */ Collection values() {
            return ImmutableMap.super.values();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.class */
    public final class MapViewOfValuesAsSingletonSets extends IteratorBasedImmutableMap<K, ImmutableSet<V>> {

        /* renamed from: com.google.common.collect.ImmutableMap$MapViewOfValuesAsSingletonSets$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$a.class */
        public class C7473a extends AbstractC4978e1<Map.Entry<K, ImmutableSet<V>>> {

            /* renamed from: a */
            public final /* synthetic */ Iterator f30532a;

            /* renamed from: com.google.common.collect.ImmutableMap$MapViewOfValuesAsSingletonSets$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$a$a.class */
            public class C7474a extends AbstractC4960b<K, ImmutableSet<V>> {

                /* renamed from: a */
                public final /* synthetic */ Map.Entry f30533a;

                public C7474a(C7473a aVar, Map.Entry entry) {
                    this.f30533a = entry;
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
                public K getKey() {
                    return (K) this.f30533a.getKey();
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
                public ImmutableSet<V> getValue() {
                    return ImmutableSet.m8348of(this.f30533a.getValue());
                }
            }

            public C7473a(MapViewOfValuesAsSingletonSets mapViewOfValuesAsSingletonSets, Iterator it) {
                this.f30532a = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30532a.hasNext();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, ImmutableSet<V>> next() {
                return new C7474a(this, (Map.Entry) this.f30532a.next());
            }
        }

        public MapViewOfValuesAsSingletonSets() {
        }

        public /* synthetic */ MapViewOfValuesAsSingletonSets(ImmutableMap immutableMap, C7475a aVar) {
            this();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public boolean containsKey(Object obj) {
            return ImmutableMap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap, com.google.common.collect.ImmutableMap
        public ImmutableSet<K> createKeySet() {
            return ImmutableMap.this.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap
        public AbstractC4978e1<Map.Entry<K, ImmutableSet<V>>> entryIterator() {
            return new C7473a(this, ImmutableMap.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public ImmutableSet<V> get(Object obj) {
            Object obj2 = ImmutableMap.this.get(obj);
            return obj2 == null ? null : ImmutableSet.m8348of(obj2);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public int hashCode() {
            return ImmutableMap.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableMap
        public boolean isHashCodeFast() {
            return ImmutableMap.this.isHashCodeFast();
        }

        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return ImmutableMap.this.isPartialView();
        }

        @Override // java.util.Map
        public int size() {
            return ImmutableMap.this.size();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMap$SerializedForm.class */
    public static class SerializedForm implements Serializable {
        public static final long serialVersionUID = 0;
        public final Object[] keys;
        public final Object[] values;

        public SerializedForm(ImmutableMap<?, ?> immutableMap) {
            this.keys = new Object[immutableMap.size()];
            this.values = new Object[immutableMap.size()];
            AbstractC4978e1<Map.Entry<?, ?>> it = immutableMap.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                this.keys[i] = next.getKey();
                this.values[i] = next.getValue();
                i++;
            }
        }

        public Object createMap(C7476b<Object, Object> bVar) {
            int i = 0;
            while (true) {
                Object[] objArr = this.keys;
                if (i >= objArr.length) {
                    return bVar.mo8322a();
                }
                bVar.mo8319a(objArr[i], this.values[i]);
                i++;
            }
        }

        public Object readResolve() {
            return createMap(new C7476b<>(this.keys.length));
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMap$a.class */
    public class C7475a extends AbstractC4978e1<K> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC4978e1 f30534a;

        public C7475a(ImmutableMap immutableMap, AbstractC4978e1 e1Var) {
            this.f30534a = e1Var;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30534a.hasNext();
        }

        @Override // java.util.Iterator
        public K next() {
            return (K) ((Map.Entry) this.f30534a.next()).getKey();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMap$b.class */
    public static class C7476b<K, V> {

        /* renamed from: a */
        public Comparator<? super V> f30535a;

        /* renamed from: b */
        public Object[] f30536b;

        /* renamed from: c */
        public int f30537c;

        /* renamed from: d */
        public boolean f30538d;

        public C7476b() {
            this(4);
        }

        public C7476b(int i) {
            this.f30536b = new Object[i * 2];
            this.f30537c = 0;
            this.f30538d = false;
        }

        /* renamed from: a */
        public C7476b<K, V> mo8320a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                m8374a(this.f30537c + ((Collection) iterable).size());
            }
            for (Map.Entry<? extends K, ? extends V> entry : iterable) {
                mo8318a(entry);
            }
            return this;
        }

        /* renamed from: a */
        public C7476b<K, V> mo8319a(K k, V v) {
            m8374a(this.f30537c + 1);
            C5006n.m24661a(k, v);
            Object[] objArr = this.f30536b;
            int i = this.f30537c;
            objArr[i * 2] = k;
            objArr[(i * 2) + 1] = v;
            this.f30537c = i + 1;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public C7476b<K, V> mo8318a(Map.Entry<? extends K, ? extends V> entry) {
            return mo8319a(entry.getKey(), entry.getValue());
        }

        /* renamed from: a */
        public C7476b<K, V> mo8317a(Map<? extends K, ? extends V> map) {
            return mo8320a(map.entrySet());
        }

        /* renamed from: a */
        public ImmutableMap<K, V> mo8322a() {
            m8373b();
            this.f30538d = true;
            return RegularImmutableMap.create(this.f30537c, this.f30536b);
        }

        /* renamed from: a */
        public final void m8374a(int i) {
            int i2 = i * 2;
            Object[] objArr = this.f30536b;
            if (i2 > objArr.length) {
                this.f30536b = Arrays.copyOf(objArr, ImmutableCollection.AbstractC7467b.m8401a(objArr.length, i2));
                this.f30538d = false;
            }
        }

        /* renamed from: b */
        public void m8373b() {
            int i;
            if (this.f30535a != null) {
                if (this.f30538d) {
                    this.f30536b = Arrays.copyOf(this.f30536b, this.f30537c * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.f30537c];
                int i2 = 0;
                while (true) {
                    i = this.f30537c;
                    if (i2 >= i) {
                        break;
                    }
                    Object[] objArr = this.f30536b;
                    int i3 = i2 * 2;
                    entryArr[i2] = new AbstractMap.SimpleImmutableEntry(objArr[i3], objArr[i3 + 1]);
                    i2++;
                }
                Arrays.sort(entryArr, 0, i, Ordering.from(this.f30535a).onResultOf(Maps.m8118e()));
                for (int i4 = 0; i4 < this.f30537c; i4++) {
                    int i5 = i4 * 2;
                    this.f30536b[i5] = entryArr[i4].getKey();
                    this.f30536b[i5 + 1] = entryArr[i4].getValue();
                }
            }
        }
    }

    public static <K, V> C7476b<K, V> builder() {
        return new C7476b<>();
    }

    public static <K, V> C7476b<K, V> builderWithExpectedSize(int i) {
        C5006n.m24663a(i, "expectedSize");
        return new C7476b<>(i);
    }

    public static void checkNoConflict(boolean z, String str, Map.Entry<?, ?> entry, Map.Entry<?, ?> entry2) {
        if (!z) {
            throw conflictException(str, entry, entry2);
        }
    }

    public static IllegalArgumentException conflictException(String str, Object obj, Object obj2) {
        return new IllegalArgumentException("Multiple entries with same " + str + ": " + obj + " and " + obj2);
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        C7476b bVar = new C7476b(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        bVar.mo8320a(iterable);
        return bVar.mo8322a();
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.isPartialView()) {
                return immutableMap;
            }
        }
        return copyOf(map.entrySet());
    }

    public static <K, V> Map.Entry<K, V> entryOf(K k, V v) {
        C5006n.m24661a(k, v);
        return new AbstractMap.SimpleImmutableEntry(k, v);
    }

    /* renamed from: of */
    public static <K, V> ImmutableMap<K, V> m8380of() {
        return (ImmutableMap<K, V>) RegularImmutableMap.EMPTY;
    }

    /* renamed from: of */
    public static <K, V> ImmutableMap<K, V> m8379of(K k, V v) {
        C5006n.m24661a(k, v);
        return RegularImmutableMap.create(1, new Object[]{k, v});
    }

    /* renamed from: of */
    public static <K, V> ImmutableMap<K, V> m8378of(K k, V v, K k2, V v2) {
        C5006n.m24661a(k, v);
        C5006n.m24661a(k2, v2);
        return RegularImmutableMap.create(2, new Object[]{k, v, k2, v2});
    }

    /* renamed from: of */
    public static <K, V> ImmutableMap<K, V> m8377of(K k, V v, K k2, V v2, K k3, V v3) {
        C5006n.m24661a(k, v);
        C5006n.m24661a(k2, v2);
        C5006n.m24661a(k3, v3);
        return RegularImmutableMap.create(3, new Object[]{k, v, k2, v2, k3, v3});
    }

    /* renamed from: of */
    public static <K, V> ImmutableMap<K, V> m8376of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        C5006n.m24661a(k, v);
        C5006n.m24661a(k2, v2);
        C5006n.m24661a(k3, v3);
        C5006n.m24661a(k4, v4);
        return RegularImmutableMap.create(4, new Object[]{k, v, k2, v2, k3, v3, k4, v4});
    }

    /* renamed from: of */
    public static <K, V> ImmutableMap<K, V> m8375of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        C5006n.m24661a(k, v);
        C5006n.m24661a(k2, v2);
        C5006n.m24661a(k3, v3);
        C5006n.m24661a(k4, v4);
        C5006n.m24661a(k5, v5);
        return RegularImmutableMap.create(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    public ImmutableSetMultimap<K, V> asMultimap() {
        if (isEmpty()) {
            return ImmutableSetMultimap.m8341of();
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap = this.multimapView;
        ImmutableSetMultimap<K, V> immutableSetMultimap2 = immutableSetMultimap;
        if (immutableSetMultimap == null) {
            immutableSetMultimap2 = new ImmutableSetMultimap<>(new MapViewOfValuesAsSingletonSets(this, null), size(), null);
            this.multimapView = immutableSetMultimap2;
        }
        return immutableSetMultimap2;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract ImmutableSet<Map.Entry<K, V>> createEntrySet();

    public abstract ImmutableSet<K> createKeySet();

    public abstract ImmutableCollection<V> createValues();

    @Override // java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entrySet;
        ImmutableSet<Map.Entry<K, V>> immutableSet2 = immutableSet;
        if (immutableSet == null) {
            immutableSet2 = createEntrySet();
            this.entrySet = immutableSet2;
        }
        return immutableSet2;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return Maps.m8122c(this, obj);
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        if (v2 != null) {
            v = v2;
        }
        return v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return Sets.m8061a(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean isHashCodeFast() {
        return false;
    }

    public abstract boolean isPartialView();

    public AbstractC4978e1<K> keyIterator() {
        return new C7475a(this, entrySet().iterator());
    }

    @Override // java.util.Map
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.keySet;
        ImmutableSet<K> immutableSet2 = immutableSet;
        if (immutableSet == null) {
            immutableSet2 = createKeySet();
            this.keySet = immutableSet2;
        }
        return immutableSet2;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return Maps.m8143a(this);
    }

    @Override // java.util.Map, p131c.p161d.p266c.p269c.AbstractC4999k
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.values;
        ImmutableCollection<V> immutableCollection2 = immutableCollection;
        if (immutableCollection == null) {
            immutableCollection2 = createValues();
            this.values = immutableCollection2;
        }
        return immutableCollection2;
    }

    public Object writeReplace() {
        return new SerializedForm(this);
    }
}
