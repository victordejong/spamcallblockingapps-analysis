package com.google.common.collect;

import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4963c;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.AbstractC5027t0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5008o;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap.class */
public abstract class AbstractMapBasedMultimap<K, V> extends AbstractC4963c<K, V> implements Serializable {
    public static final long serialVersionUID = 2447537837011683357L;
    public transient Map<K, Collection<V>> map;
    public transient int totalSize;

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$a.class */
    public class C7399a extends AbstractMapBasedMultimap<K, V>.AbstractC7404d<V> {
        public C7399a(AbstractMapBasedMultimap abstractMapBasedMultimap) {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AbstractC7404d
        /* renamed from: a */
        public V mo8451a(K k, V v) {
            return v;
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$b.class */
    public class C7400b extends AbstractMapBasedMultimap<K, V>.AbstractC7404d<Map.Entry<K, V>> {
        public C7400b(AbstractMapBasedMultimap abstractMapBasedMultimap) {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AbstractC7404d
        /* renamed from: a */
        public Map.Entry<K, V> mo8451a(K k, V v) {
            return Maps.m8148a(k, v);
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$c.class */
    public class C7401c extends Maps.AbstractC7584u<K, Collection<V>> {

        /* renamed from: d */
        public final transient Map<K, Collection<V>> f30421d;

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$c$a.class */
        public class C7402a extends Maps.AbstractC7572j<K, Collection<V>> {
            public C7402a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC7572j
            /* renamed from: a */
            public Map<K, Collection<V>> mo8095a() {
                return C7401c.this;
            }

            @Override // com.google.common.collect.Maps.AbstractC7572j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return C5008o.m24655a(C7401c.this.f30421d.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new C7403b();
            }

            @Override // com.google.common.collect.Maps.AbstractC7572j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                AbstractMapBasedMultimap.this.removeValuesForKey(((Map.Entry) obj).getKey());
                return true;
            }
        }

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$c$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$c$b.class */
        public class C7403b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: a */
            public final Iterator<Map.Entry<K, Collection<V>>> f30424a;

            /* renamed from: b */
            public Collection<V> f30425b;

            public C7403b() {
                this.f30424a = C7401c.this.f30421d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30424a.hasNext();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.f30424a.next();
                this.f30425b = next.getValue();
                return C7401c.this.m8452a(next);
            }

            @Override // java.util.Iterator
            public void remove() {
                C5006n.m24660a(this.f30425b != null);
                this.f30424a.remove();
                AbstractMapBasedMultimap.this.totalSize -= this.f30425b.size();
                this.f30425b.clear();
                this.f30425b = null;
            }
        }

        public C7401c(Map<K, Collection<V>> map) {
            this.f30421d = map;
        }

        /* renamed from: a */
        public Map.Entry<K, Collection<V>> m8452a(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return Maps.m8148a(key, AbstractMapBasedMultimap.this.wrapCollection(key, entry.getValue()));
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: a */
        public Set<Map.Entry<K, Collection<V>>> mo8048a() {
            return new C7402a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f30421d == AbstractMapBasedMultimap.this.map) {
                AbstractMapBasedMultimap.this.clear();
            } else {
                Iterators.m8258b(new C7403b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return Maps.m8119d(this.f30421d, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.f30421d.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) Maps.m8116e(this.f30421d, obj);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.wrapCollection(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f30421d.hashCode();
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> remove(Object obj) {
            Collection<V> remove = this.f30421d.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> createCollection = AbstractMapBasedMultimap.this.createCollection();
            createCollection.addAll(remove);
            AbstractMapBasedMultimap.this.totalSize -= remove.size();
            remove.clear();
            return createCollection;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f30421d.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f30421d.toString();
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$d.class */
    public abstract class AbstractC7404d<T> implements Iterator<T> {

        /* renamed from: a */
        public final Iterator<Map.Entry<K, Collection<V>>> f30427a;

        /* renamed from: b */
        public K f30428b = null;

        /* renamed from: c */
        public Collection<V> f30429c = null;

        /* renamed from: d */
        public Iterator<V> f30430d = Iterators.m8255c();

        public AbstractC7404d() {
            this.f30427a = (Iterator<Map.Entry<K, V>>) AbstractMapBasedMultimap.this.map.entrySet().iterator();
        }

        /* renamed from: a */
        public abstract T mo8451a(K k, V v);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30427a.hasNext() || this.f30430d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f30430d.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f30427a.next();
                this.f30428b = next.getKey();
                Collection<V> value = next.getValue();
                this.f30429c = value;
                this.f30430d = value.iterator();
            }
            return mo8451a(this.f30428b, this.f30430d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f30430d.remove();
            if (this.f30429c.isEmpty()) {
                this.f30427a.remove();
            }
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$e.class */
    public class C7405e extends Maps.C7576m<K, Collection<V>> {

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$e$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$e$a.class */
        public class C7406a implements Iterator<K> {

            /* renamed from: a */
            public Map.Entry<K, Collection<V>> f30433a;

            /* renamed from: b */
            public final /* synthetic */ Iterator f30434b;

            public C7406a(Iterator it) {
                this.f30434b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30434b.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.f30434b.next();
                this.f30433a = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                C5006n.m24660a(this.f30433a != null);
                Collection<V> value = this.f30433a.getValue();
                this.f30434b.remove();
                AbstractMapBasedMultimap.this.totalSize -= value.size();
                value.clear();
                this.f30433a = null;
            }
        }

        public C7405e(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.google.common.collect.Maps.C7576m, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterators.m8258b(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return mo8106a().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return this == obj || mo8106a().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return mo8106a().keySet().hashCode();
        }

        @Override // com.google.common.collect.Maps.C7576m, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C7406a(mo8106a().entrySet().iterator());
        }

        @Override // com.google.common.collect.Maps.C7576m, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i;
            Collection<V> remove = mo8106a().remove(obj);
            boolean z = false;
            if (remove != null) {
                i = remove.size();
                remove.clear();
                AbstractMapBasedMultimap.this.totalSize -= i;
            } else {
                i = 0;
            }
            if (i > 0) {
                z = true;
            }
            return z;
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$f.class */
    public class C7407f extends AbstractMapBasedMultimap<K, V>.C7410i implements NavigableMap<K, Collection<V>> {
        public C7407f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        /* renamed from: a */
        public Map.Entry<K, Collection<V>> m8450a(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            Collection<V> createCollection = AbstractMapBasedMultimap.this.createCollection();
            createCollection.addAll(next.getValue());
            it.remove();
            return Maps.m8148a(next.getKey(), AbstractMapBasedMultimap.this.unmodifiableCollectionSubclass(createCollection));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7410i, com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: b */
        public NavigableSet<K> mo8051b() {
            return new C7408g(mo8449d());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> ceilingEntry = mo8449d().ceilingEntry(k);
            return ceilingEntry == null ? null : m8452a(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return mo8449d().ceilingKey(k);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7410i
        /* renamed from: d */
        public NavigableMap<K, Collection<V>> mo8449d() {
            return (NavigableMap) super.mo8449d();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new C7407f(mo8449d().descendingMap());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = mo8449d().firstEntry();
            return firstEntry == null ? null : m8452a(firstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> floorEntry = mo8449d().floorEntry(k);
            return floorEntry == null ? null : m8452a(floorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return mo8449d().floorKey(k);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7410i, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new C7407f(mo8449d().headMap(k, z));
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> higherEntry = mo8449d().higherEntry(k);
            return higherEntry == null ? null : m8452a(higherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return mo8449d().higherKey(k);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7410i, com.google.common.collect.AbstractMapBasedMultimap.C7401c, com.google.common.collect.Maps.AbstractC7584u, java.util.AbstractMap, java.util.Map
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = mo8449d().lastEntry();
            return lastEntry == null ? null : m8452a(lastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> lowerEntry = mo8449d().lowerEntry(k);
            return lowerEntry == null ? null : m8452a(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return mo8449d().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return keySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return m8450a(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return m8450a(descendingMap().entrySet().iterator());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7410i, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new C7407f(mo8449d().subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7410i, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new C7407f(mo8449d().tailMap(k, z));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$g.class */
    public class C7408g extends AbstractMapBasedMultimap<K, V>.C7411j implements NavigableSet<K> {
        public C7408g(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7411j
        /* renamed from: b */
        public NavigableMap<K, Collection<V>> mo8448b() {
            return (NavigableMap) super.mo8448b();
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return mo8448b().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new C7408g(mo8448b().descendingMap());
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return mo8448b().floorKey(k);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7411j, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return new C7408g(mo8448b().headMap(k, z));
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return mo8448b().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return mo8448b().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Iterators.m8250g(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Iterators.m8250g(descendingIterator());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7411j, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new C7408g(mo8448b().subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7411j, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet<K> tailSet(K k) {
            return tailSet(k, true);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return new C7408g(mo8448b().tailMap(k, z));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$h.class */
    public class C7409h extends AbstractMapBasedMultimap<K, V>.C7414l implements RandomAccess {
        public C7409h(AbstractMapBasedMultimap abstractMapBasedMultimap, K k, List<V> list, AbstractMapBasedMultimap<K, V>.C7412k kVar) {
            super(k, list, kVar);
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$i */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$i.class */
    public class C7410i extends AbstractMapBasedMultimap<K, V>.C7401c implements SortedMap<K, Collection<V>> {

        /* renamed from: f */
        public SortedSet<K> f30438f;

        public C7410i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: b */
        public SortedSet<K> mo8051b() {
            return new C7411j(mo8449d());
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return mo8449d().comparator();
        }

        /* renamed from: d */
        public SortedMap<K, Collection<V>> mo8449d() {
            return (SortedMap) this.f30421d;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return mo8449d().firstKey();
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new C7410i(mo8449d().headMap(k));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7401c, com.google.common.collect.Maps.AbstractC7584u, java.util.AbstractMap, java.util.Map
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f30438f;
            SortedSet<K> sortedSet2 = sortedSet;
            if (sortedSet == null) {
                sortedSet2 = mo8051b();
                this.f30438f = sortedSet2;
            }
            return sortedSet2;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return mo8449d().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new C7410i(mo8449d().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new C7410i(mo8449d().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$j */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$j.class */
    public class C7411j extends AbstractMapBasedMultimap<K, V>.C7405e implements SortedSet<K> {
        public C7411j(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        /* renamed from: b */
        public SortedMap<K, Collection<V>> mo8448b() {
            return (SortedMap) super.mo8106a();
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return mo8448b().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return mo8448b().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new C7411j(mo8448b().headMap(k));
        }

        @Override // java.util.SortedSet
        public K last() {
            return mo8448b().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new C7411j(mo8448b().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new C7411j(mo8448b().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$k */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$k.class */
    public class C7412k extends AbstractCollection<V> {

        /* renamed from: a */
        public final K f30441a;

        /* renamed from: b */
        public Collection<V> f30442b;

        /* renamed from: c */
        public final AbstractMapBasedMultimap<K, V>.C7412k f30443c;

        /* renamed from: d */
        public final Collection<V> f30444d;

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$k$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$k$a.class */
        public class C7413a implements Iterator<V> {

            /* renamed from: a */
            public final Iterator<V> f30446a;

            /* renamed from: b */
            public final Collection<V> f30447b;

            public C7413a() {
                this.f30447b = C7412k.this.f30442b;
                this.f30446a = AbstractMapBasedMultimap.iteratorOrListIterator(C7412k.this.f30442b);
            }

            public C7413a(Iterator<V> it) {
                this.f30447b = C7412k.this.f30442b;
                this.f30446a = it;
            }

            /* renamed from: a */
            public Iterator<V> m8441a() {
                m8440b();
                return this.f30446a;
            }

            /* renamed from: b */
            public void m8440b() {
                C7412k.this.m8443f();
                if (C7412k.this.f30442b != this.f30447b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m8440b();
                return this.f30446a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                m8440b();
                return this.f30446a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f30446a.remove();
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                C7412k.this.m8442i();
            }
        }

        public C7412k(K k, Collection<V> collection, AbstractMapBasedMultimap<K, V>.C7412k kVar) {
            this.f30441a = k;
            this.f30442b = collection;
            this.f30443c = kVar;
            this.f30444d = kVar == null ? null : kVar.m8445c();
        }

        /* renamed from: a */
        public void m8447a() {
            AbstractMapBasedMultimap<K, V>.C7412k kVar = this.f30443c;
            if (kVar != null) {
                kVar.m8447a();
            } else {
                AbstractMapBasedMultimap.this.map.put(this.f30441a, this.f30442b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            m8443f();
            boolean isEmpty = this.f30442b.isEmpty();
            boolean add = this.f30442b.add(v);
            if (add) {
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (isEmpty) {
                    m8447a();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f30442b.addAll(collection);
            if (addAll) {
                int size2 = this.f30442b.size();
                AbstractMapBasedMultimap.this.totalSize += size2 - size;
                if (size == 0) {
                    m8447a();
                }
            }
            return addAll;
        }

        /* renamed from: b */
        public AbstractMapBasedMultimap<K, V>.C7412k m8446b() {
            return this.f30443c;
        }

        /* renamed from: c */
        public Collection<V> m8445c() {
            return this.f30442b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size != 0) {
                this.f30442b.clear();
                AbstractMapBasedMultimap.this.totalSize -= size;
                m8442i();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            m8443f();
            return this.f30442b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            m8443f();
            return this.f30442b.containsAll(collection);
        }

        /* renamed from: d */
        public K m8444d() {
            return this.f30441a;
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            m8443f();
            return this.f30442b.equals(obj);
        }

        /* renamed from: f */
        public void m8443f() {
            Collection<V> collection;
            AbstractMapBasedMultimap<K, V>.C7412k kVar = this.f30443c;
            if (kVar != null) {
                kVar.m8443f();
                if (this.f30443c.m8445c() != this.f30444d) {
                    throw new ConcurrentModificationException();
                }
            } else if (this.f30442b.isEmpty() && (collection = (Collection) AbstractMapBasedMultimap.this.map.get(this.f30441a)) != null) {
                this.f30442b = collection;
            }
        }

        @Override // java.util.Collection
        public int hashCode() {
            m8443f();
            return this.f30442b.hashCode();
        }

        /* renamed from: i */
        public void m8442i() {
            AbstractMapBasedMultimap<K, V>.C7412k kVar = this.f30443c;
            if (kVar != null) {
                kVar.m8442i();
            } else if (this.f30442b.isEmpty()) {
                AbstractMapBasedMultimap.this.map.remove(this.f30441a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            m8443f();
            return new C7413a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            m8443f();
            boolean remove = this.f30442b.remove(obj);
            if (remove) {
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                m8442i();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f30442b.removeAll(collection);
            if (removeAll) {
                int size2 = this.f30442b.size();
                AbstractMapBasedMultimap.this.totalSize += size2 - size;
                m8442i();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            C4933n.m24795a(collection);
            int size = size();
            boolean retainAll = this.f30442b.retainAll(collection);
            if (retainAll) {
                int size2 = this.f30442b.size();
                AbstractMapBasedMultimap.this.totalSize += size2 - size;
                m8442i();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            m8443f();
            return this.f30442b.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            m8443f();
            return this.f30442b.toString();
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$l */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$l.class */
    public class C7414l extends AbstractMapBasedMultimap<K, V>.C7412k implements List<V> {

        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$l$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$l$a.class */
        public class C7415a extends AbstractMapBasedMultimap<K, V>.C7412k.C7413a implements ListIterator<V> {
            public C7415a() {
                super();
            }

            public C7415a(int i) {
                super(C7414l.this.m8439j().listIterator(i));
            }

            @Override // java.util.ListIterator
            public void add(V v) {
                boolean isEmpty = C7414l.this.isEmpty();
                m8438c().add(v);
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (isEmpty) {
                    C7414l.this.m8447a();
                }
            }

            /* renamed from: c */
            public final ListIterator<V> m8438c() {
                return (ListIterator) m8441a();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return m8438c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return m8438c().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return m8438c().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return m8438c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v) {
                m8438c().set(v);
            }
        }

        public C7414l(K k, List<V> list, AbstractMapBasedMultimap<K, V>.C7412k kVar) {
            super(k, list, kVar);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            m8443f();
            boolean isEmpty = m8445c().isEmpty();
            m8439j().add(i, v);
            AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
            if (isEmpty) {
                m8447a();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = m8439j().addAll(i, collection);
            if (addAll) {
                int size2 = m8445c().size();
                AbstractMapBasedMultimap.this.totalSize += size2 - size;
                if (size == 0) {
                    m8447a();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        public V get(int i) {
            m8443f();
            return m8439j().get(i);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            m8443f();
            return m8439j().indexOf(obj);
        }

        /* renamed from: j */
        public List<V> m8439j() {
            return (List) m8445c();
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            m8443f();
            return m8439j().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            m8443f();
            return new C7415a();
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            m8443f();
            return new C7415a(i);
        }

        @Override // java.util.List
        public V remove(int i) {
            m8443f();
            V remove = m8439j().remove(i);
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
            m8442i();
            return remove;
        }

        @Override // java.util.List
        public V set(int i, V v) {
            m8443f();
            return m8439j().set(i, v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            m8443f();
            return AbstractMapBasedMultimap.this.wrapList(m8444d(), m8439j().subList(i, i2), m8446b() == null ? this : m8446b());
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$m */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$m.class */
    public class C7416m extends AbstractMapBasedMultimap<K, V>.C7418o implements NavigableSet<V> {
        public C7416m(K k, NavigableSet<V> navigableSet, AbstractMapBasedMultimap<K, V>.C7412k kVar) {
            super(k, navigableSet, kVar);
        }

        /* renamed from: a */
        public final NavigableSet<V> m8437a(NavigableSet<V> navigableSet) {
            return new C7416m(this.f30441a, navigableSet, m8446b() == null ? this : m8446b());
        }

        @Override // java.util.NavigableSet
        public V ceiling(V v) {
            return mo8436j().ceiling(v);
        }

        @Override // java.util.NavigableSet
        public Iterator<V> descendingIterator() {
            return new C7412k.C7413a(mo8436j().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> descendingSet() {
            return m8437a(mo8436j().descendingSet());
        }

        @Override // java.util.NavigableSet
        public V floor(V v) {
            return mo8436j().floor(v);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> headSet(V v, boolean z) {
            return m8437a(mo8436j().headSet(v, z));
        }

        @Override // java.util.NavigableSet
        public V higher(V v) {
            return mo8436j().higher(v);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7418o
        /* renamed from: j */
        public NavigableSet<V> mo8436j() {
            return (NavigableSet) super.mo8436j();
        }

        @Override // java.util.NavigableSet
        public V lower(V v) {
            return mo8436j().lower(v);
        }

        @Override // java.util.NavigableSet
        public V pollFirst() {
            return (V) Iterators.m8250g(iterator());
        }

        @Override // java.util.NavigableSet
        public V pollLast() {
            return (V) Iterators.m8250g(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> subSet(V v, boolean z, V v2, boolean z2) {
            return m8437a(mo8436j().subSet(v, z, v2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> tailSet(V v, boolean z) {
            return m8437a(mo8436j().tailSet(v, z));
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$n */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$n.class */
    public class C7417n extends AbstractMapBasedMultimap<K, V>.C7412k implements Set<V> {
        public C7417n(K k, Set<V> set) {
            super(k, set, null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.C7412k, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean a = Sets.m8059a((Set<?>) this.f30442b, collection);
            if (a) {
                int size2 = this.f30442b.size();
                AbstractMapBasedMultimap.this.totalSize += size2 - size;
                m8442i();
            }
            return a;
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$o */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractMapBasedMultimap$o.class */
    public class C7418o extends AbstractMapBasedMultimap<K, V>.C7412k implements SortedSet<V> {
        public C7418o(K k, SortedSet<V> sortedSet, AbstractMapBasedMultimap<K, V>.C7412k kVar) {
            super(k, sortedSet, kVar);
        }

        @Override // java.util.SortedSet
        public Comparator<? super V> comparator() {
            return mo8436j().comparator();
        }

        @Override // java.util.SortedSet
        public V first() {
            m8443f();
            return mo8436j().first();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> headSet(V v) {
            m8443f();
            return new C7418o(m8444d(), mo8436j().headSet(v), m8446b() == null ? this : m8446b());
        }

        /* renamed from: j */
        public SortedSet<V> mo8436j() {
            return (SortedSet) m8445c();
        }

        @Override // java.util.SortedSet
        public V last() {
            m8443f();
            return mo8436j().last();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> subSet(V v, V v2) {
            m8443f();
            return new C7418o(m8444d(), mo8436j().subSet(v, v2), m8446b() == null ? this : m8446b());
        }

        @Override // java.util.SortedSet
        public SortedSet<V> tailSet(V v) {
            m8443f();
            return new C7418o(m8444d(), mo8436j().tailSet(v), m8446b() == null ? this : m8446b());
        }
    }

    public AbstractMapBasedMultimap(Map<K, Collection<V>> map) {
        C4933n.m24791a(map.isEmpty());
        this.map = map;
    }

    public static /* synthetic */ int access$208(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i + 1;
        return i;
    }

    public static /* synthetic */ int access$210(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i - 1;
        return i;
    }

    private Collection<V> getOrCreateCollection(K k) {
        Collection<V> collection = this.map.get(k);
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = createCollection(k);
            this.map.put(k, collection2);
        }
        return collection2;
    }

    public static <E> Iterator<E> iteratorOrListIterator(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeValuesForKey(Object obj) {
        Collection collection = (Collection) Maps.m8115f(this.map, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
    }

    public Map<K, Collection<V>> backingMap() {
        return this.map;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public void clear() {
        for (Collection<V> collection : this.map.values()) {
            collection.clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Map<K, Collection<V>> createAsMap() {
        return new C7401c(this.map);
    }

    public abstract Collection<V> createCollection();

    public Collection<V> createCollection(K k) {
        return createCollection();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Collection<Map.Entry<K, V>> createEntries() {
        return this instanceof AbstractC5027t0 ? new AbstractC4963c.C4965b(this) : new AbstractC4963c.C4964a();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Set<K> createKeySet() {
        return new C7405e(this.map);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public AbstractC4997j0<K> createKeys() {
        return new Multimaps.C7592c(this);
    }

    public final Map<K, Collection<V>> createMaybeNavigableAsMap() {
        Map<K, Collection<V>> map = this.map;
        return map instanceof NavigableMap ? new C7407f((NavigableMap) this.map) : map instanceof SortedMap ? new C7410i((SortedMap) this.map) : new C7401c(this.map);
    }

    public final Set<K> createMaybeNavigableKeySet() {
        Map<K, Collection<V>> map = this.map;
        return map instanceof NavigableMap ? new C7408g((NavigableMap) this.map) : map instanceof SortedMap ? new C7411j((SortedMap) this.map) : new C7405e(this.map);
    }

    public Collection<V> createUnmodifiableEmptyCollection() {
        return (Collection<V>) unmodifiableCollectionSubclass((Collection<V>) createCollection());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Collection<V> createValues() {
        return new AbstractC4963c.C4966c();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new C7400b(this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public Collection<V> get(K k) {
        Collection<V> collection = this.map.get(k);
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = createCollection(k);
        }
        return wrapCollection(k, collection2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean put(K k, V v) {
        Collection<V> collection = this.map.get(k);
        if (collection == null) {
            Collection<V> createCollection = createCollection(k);
            if (createCollection.add(v)) {
                this.totalSize++;
                this.map.put(k, createCollection);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (!collection.add(v)) {
            return false;
        } else {
            this.totalSize++;
            return true;
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public Collection<V> removeAll(Object obj) {
        Collection<V> remove = this.map.remove(obj);
        if (remove == null) {
            return createUnmodifiableEmptyCollection();
        }
        Collection createCollection = createCollection();
        createCollection.addAll(remove);
        this.totalSize -= remove.size();
        remove.clear();
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k);
        }
        Collection<V> orCreateCollection = getOrCreateCollection(k);
        Collection createCollection = createCollection();
        createCollection.addAll(orCreateCollection);
        this.totalSize -= orCreateCollection.size();
        orCreateCollection.clear();
        while (it.hasNext()) {
            if (orCreateCollection.add((V) it.next())) {
                this.totalSize++;
            }
        }
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection);
    }

    public final void setMap(Map<K, Collection<V>> map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection<V> collection : map.values()) {
            C4933n.m24791a(!collection.isEmpty());
            this.totalSize += collection.size();
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public int size() {
        return this.totalSize;
    }

    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Iterator<V> valueIterator() {
        return new C7399a(this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public Collection<V> values() {
        return super.values();
    }

    public Collection<V> wrapCollection(K k, Collection<V> collection) {
        return new C7412k(k, collection, null);
    }

    public final List<V> wrapList(K k, List<V> list, AbstractMapBasedMultimap<K, V>.C7412k kVar) {
        return list instanceof RandomAccess ? new C7409h(this, k, list, kVar) : new C7414l(k, list, kVar);
    }
}
