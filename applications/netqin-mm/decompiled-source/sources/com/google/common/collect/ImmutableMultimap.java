package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4995i0;
import p131c.p161d.p266c.p269c.AbstractC4996j;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5009o0;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap.class */
public abstract class ImmutableMultimap<K, V> extends AbstractC4996j<K, V> implements Serializable {
    public static final long serialVersionUID = 0;
    public final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
    public final transient int size;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap$EntryCollection.class */
    public static class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        public static final long serialVersionUID = 0;
        public final ImmutableMultimap<K, V> multimap;

        public EntryCollection(ImmutableMultimap<K, V> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return this.multimap.isPartialView();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public AbstractC4978e1<Map.Entry<K, V>> iterator() {
            return this.multimap.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.multimap.size();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap$Keys.class */
    public class Keys extends ImmutableMultiset<K> {
        public Keys() {
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return ImmutableMultimap.this.containsKey(obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public int count(Object obj) {
            Collection collection = (Collection) ImmutableMultimap.this.map.get(obj);
            return collection == null ? 0 : collection.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset, p131c.p161d.p266c.p269c.AbstractC4997j0
        public ImmutableSet<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }

        @Override // com.google.common.collect.ImmutableMultiset
        public AbstractC4997j0.AbstractC4998a<K> getEntry(int i) {
            Map.Entry<K, ? extends ImmutableCollection<V>> entry = ImmutableMultimap.this.map.entrySet().asList().get(i);
            return Multisets.m8083a(entry.getKey(), ((Collection) entry.getValue()).size());
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
        public int size() {
            return ImmutableMultimap.this.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return new KeysSerializedForm(ImmutableMultimap.this);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap$KeysSerializedForm.class */
    public static final class KeysSerializedForm implements Serializable {
        public final ImmutableMultimap<?, ?> multimap;

        public KeysSerializedForm(ImmutableMultimap<?, ?> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        public Object readResolve() {
            return this.multimap.keys();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap$Values.class */
    public static final class Values<K, V> extends ImmutableCollection<V> {
        public static final long serialVersionUID = 0;
        public final transient ImmutableMultimap<K, V> multimap;

        public Values(ImmutableMultimap<K, V> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.multimap.containsValue(obj);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public int copyIntoArray(Object[] objArr, int i) {
            AbstractC4978e1<? extends ImmutableCollection<V>> it = this.multimap.map.values().iterator();
            while (it.hasNext()) {
                i = ((ImmutableCollection) it.next()).copyIntoArray(objArr, i);
            }
            return i;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public AbstractC4978e1<V> iterator() {
            return this.multimap.valueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.multimap.size();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMultimap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap$a.class */
    public class C7479a extends AbstractC4978e1<Map.Entry<K, V>> {

        /* renamed from: a */
        public final Iterator<? extends Map.Entry<K, ? extends ImmutableCollection<V>>> f30541a;

        /* renamed from: b */
        public K f30542b = null;

        /* renamed from: c */
        public Iterator<V> f30543c = Iterators.m8270a();

        public C7479a() {
            this.f30541a = ImmutableMultimap.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30543c.hasNext() || this.f30541a.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (!this.f30543c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f30541a.next();
                this.f30542b = (K) entry.getKey();
                this.f30543c = ((ImmutableCollection) entry.getValue()).iterator();
            }
            return Maps.m8148a(this.f30542b, this.f30543c.next());
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMultimap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap$b.class */
    public class C7480b extends AbstractC4978e1<V> {

        /* renamed from: a */
        public Iterator<? extends ImmutableCollection<V>> f30545a;

        /* renamed from: b */
        public Iterator<V> f30546b = Iterators.m8270a();

        public C7480b() {
            this.f30545a = ImmutableMultimap.this.map.values().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30546b.hasNext() || this.f30545a.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            if (!this.f30546b.hasNext()) {
                this.f30546b = ((ImmutableCollection) this.f30545a.next()).iterator();
            }
            return this.f30546b.next();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMultimap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap$c.class */
    public static class C7481c<K, V> {

        /* renamed from: a */
        public Map<K, Collection<V>> f30548a = C5009o0.m24647b();

        /* renamed from: b */
        public Comparator<? super K> f30549b;

        /* renamed from: c */
        public Comparator<? super V> f30550c;

        /* renamed from: a */
        public C7481c<K, V> mo8334a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            for (Map.Entry<? extends K, ? extends V> entry : iterable) {
                mo8332a(entry);
            }
            return this;
        }

        /* renamed from: a */
        public C7481c<K, V> mo8333a(K k, V v) {
            C5006n.m24661a(k, v);
            Collection<V> collection = this.f30548a.get(k);
            Collection<V> collection2 = collection;
            if (collection == null) {
                Map<K, Collection<V>> map = this.f30548a;
                collection2 = mo8331b();
                map.put(k, collection2);
            }
            collection2.add(v);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public C7481c<K, V> mo8332a(Map.Entry<? extends K, ? extends V> entry) {
            return mo8333a(entry.getKey(), entry.getValue());
        }

        /* renamed from: a */
        public ImmutableMultimap<K, V> mo8335a() {
            Set<Map.Entry<K, Collection<V>>> entrySet = this.f30548a.entrySet();
            Comparator<? super K> comparator = this.f30549b;
            Collection collection = entrySet;
            if (comparator != null) {
                collection = Ordering.from(comparator).onKeys().immutableSortedCopy(entrySet);
            }
            return ImmutableListMultimap.fromMapEntries(collection, this.f30550c);
        }

        /* renamed from: b */
        public Collection<V> mo8331b() {
            return new ArrayList();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMultimap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultimap$d.class */
    public static class C7482d {

        /* renamed from: a */
        public static final C5023s0.C5025b<ImmutableMultimap> f30551a = C5023s0.m24620a(ImmutableMultimap.class, "map");

        /* renamed from: b */
        public static final C5023s0.C5025b<ImmutableMultimap> f30552b = C5023s0.m24620a(ImmutableMultimap.class, "size");
    }

    public ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> immutableMap, int i) {
        this.map = immutableMap;
        this.size = i;
    }

    public static <K, V> C7481c<K, V> builder() {
        return new C7481c<>();
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        if (i0Var instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) i0Var;
            if (!immutableMultimap.isPartialView()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf((AbstractC4995i0) i0Var);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    /* renamed from: of */
    public static <K, V> ImmutableMultimap<K, V> m8372of() {
        return ImmutableListMultimap.m8386of();
    }

    /* renamed from: of */
    public static <K, V> ImmutableMultimap<K, V> m8371of(K k, V v) {
        return ImmutableListMultimap.m8385of((Object) k, (Object) v);
    }

    /* renamed from: of */
    public static <K, V> ImmutableMultimap<K, V> m8370of(K k, V v, K k2, V v2) {
        return ImmutableListMultimap.m8384of((Object) k, (Object) v, (Object) k2, (Object) v2);
    }

    /* renamed from: of */
    public static <K, V> ImmutableMultimap<K, V> m8369of(K k, V v, K k2, V v2, K k3, V v3) {
        return ImmutableListMultimap.m8383of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3);
    }

    /* renamed from: of */
    public static <K, V> ImmutableMultimap<K, V> m8368of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        return ImmutableListMultimap.m8382of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4);
    }

    /* renamed from: of */
    public static <K, V> ImmutableMultimap<K, V> m8367of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return ImmutableListMultimap.m8381of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4, (Object) k5, (Object) v5);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public ImmutableMap<K, Collection<V>> asMap() {
        return (ImmutableMap<K, ? extends ImmutableCollection<V>>) this.map;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public ImmutableCollection<Map.Entry<K, V>> createEntries() {
        return new EntryCollection(this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Set<K> createKeySet() {
        throw new AssertionError("unreachable");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public ImmutableMultiset<K> createKeys() {
        return new Keys();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public ImmutableCollection<V> createValues() {
        return new Values(this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public AbstractC4978e1<Map.Entry<K, V>> entryIterator() {
        return new C7479a();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract ImmutableCollection<V> get(K k);

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public abstract ImmutableMultimap<V, K> inverse();

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public ImmutableSet<K> keySet() {
        return this.map.keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public ImmutableMultiset<K> keys() {
        return (ImmutableMultiset) super.keys();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public boolean put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public boolean putAll(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public boolean putAll(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public ImmutableCollection<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    @Deprecated
    public ImmutableCollection<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public int size() {
        return this.size;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public AbstractC4978e1<V> valueIterator() {
        return new C7480b();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }
}
