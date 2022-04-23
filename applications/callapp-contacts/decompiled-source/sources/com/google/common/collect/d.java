package com.google.common.collect;

import com.google.common.base.m;
import com.google.common.collect.ab;
import com.google.common.collect.ag;
import com.google.common.collect.f;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/d.class */
public abstract class d<K, V> extends com.google.common.collect.f<K, V> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private transient Map<K, Collection<V>> f32049a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f32050b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$a.class */
    public class a extends ag.e<K, Collection<V>> {

        /* renamed from: a  reason: collision with root package name */
        final transient Map<K, Collection<V>> f32051a;

        /* renamed from: com.google.common.collect.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$a$a.class */
        final class C0511a extends ag.b<K, Collection<V>> {
            C0511a() {
            }

            @Override // com.google.common.collect.ag.b
            final Map<K, Collection<V>> a() {
                return a.this;
            }

            @Override // com.google.common.collect.ag.b, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                return com.google.common.collect.j.a(a.this.f32051a.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new b();
            }

            @Override // com.google.common.collect.ag.b, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                d.a(d.this, ((Map.Entry) obj).getKey());
                return true;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$a$b.class */
        final class b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<Map.Entry<K, Collection<V>>> f32054a;

            /* renamed from: b  reason: collision with root package name */
            Collection<V> f32055b;

            b() {
                this.f32054a = a.this.f32051a.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f32054a.hasNext();
            }

            @Override // java.util.Iterator
            public final /* synthetic */ Object next() {
                Map.Entry<K, Collection<V>> next = this.f32054a.next();
                this.f32055b = next.getValue();
                return a.this.a(next);
            }

            @Override // java.util.Iterator
            public final void remove() {
                m.b(this.f32055b != null, "no calls to next() since the last call to remove()");
                this.f32054a.remove();
                d.b(d.this, this.f32055b.size());
                this.f32055b.clear();
                this.f32055b = null;
            }
        }

        a(Map<K, Collection<V>> map) {
            this.f32051a = map;
        }

        final Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return ag.a(key, d.this.a((d) key, (Collection) entry.getValue()));
        }

        @Override // com.google.common.collect.ag.e
        protected final Set<Map.Entry<K, Collection<V>>> a() {
            return new C0511a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f32051a == d.this.f32049a) {
                d.this.f();
            } else {
                ab.d(new b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return ag.b(this.f32051a, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.f32051a.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public /* synthetic */ Object get(Object obj) {
            Collection<V> collection = (Collection) ag.a((Map<?, Object>) this.f32051a, obj);
            if (collection == null) {
                return null;
            }
            return d.this.a((d) obj, (Collection) collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f32051a.hashCode();
        }

        @Override // com.google.common.collect.ag.e, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return d.this.q();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public /* synthetic */ Object remove(Object obj) {
            Collection<V> remove = this.f32051a.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> c2 = d.this.c();
            c2.addAll(remove);
            d.b(d.this, remove.size());
            remove.clear();
            return c2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f32051a.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f32051a.toString();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$b.class */
    abstract class b<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<Map.Entry<K, Collection<V>>> f32057a;

        /* renamed from: b  reason: collision with root package name */
        K f32058b = null;

        /* renamed from: c  reason: collision with root package name */
        Collection<V> f32059c = null;

        /* renamed from: d  reason: collision with root package name */
        Iterator<V> f32060d = ab.b.INSTANCE;

        b() {
            this.f32057a = (Iterator<Map.Entry<K, V>>) d.this.f32049a.entrySet().iterator();
        }

        abstract T a(K k, V v);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32057a.hasNext() || this.f32060d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f32060d.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f32057a.next();
                this.f32058b = next.getKey();
                Collection<V> value = next.getValue();
                this.f32059c = value;
                this.f32060d = value.iterator();
            }
            return a(this.f32058b, this.f32060d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f32060d.remove();
            if (this.f32059c.isEmpty()) {
                this.f32057a.remove();
            }
            d.b(d.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$c.class */
    public class c extends ag.c<K, Collection<V>> {
        c(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.google.common.collect.ag.c, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            ab.d(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.f31995d.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return this == obj || this.f31995d.keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.f31995d.keySet().hashCode();
        }

        @Override // com.google.common.collect.ag.c, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            final Iterator<Map.Entry<K, V>> it2 = this.f31995d.entrySet().iterator();
            return new Iterator<K>() { // from class: com.google.common.collect.d.c.1

                /* renamed from: a  reason: collision with root package name */
                Map.Entry<K, Collection<V>> f32062a;

                @Override // java.util.Iterator
                public final boolean hasNext() {
                    return it2.hasNext();
                }

                @Override // java.util.Iterator
                public final K next() {
                    Map.Entry<K, Collection<V>> entry = (Map.Entry) it2.next();
                    this.f32062a = entry;
                    return entry.getKey();
                }

                @Override // java.util.Iterator
                public final void remove() {
                    m.b(this.f32062a != null, "no calls to next() since the last call to remove()");
                    Collection<V> value = this.f32062a.getValue();
                    it2.remove();
                    d.b(d.this, value.size());
                    value.clear();
                    this.f32062a = null;
                }
            };
        }

        @Override // com.google.common.collect.ag.c, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i;
            Collection collection = (Collection) this.f31995d.remove(obj);
            if (collection != null) {
                i = collection.size();
                collection.clear();
                d.b(d.this, i);
            } else {
                i = 0;
            }
            return i > 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.d$d  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$d.class */
    public final class C0512d extends d<K, V>.g implements NavigableMap<K, Collection<V>> {
        C0512d(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        private Map.Entry<K, Collection<V>> a(Iterator<Map.Entry<K, Collection<V>>> it2) {
            if (!it2.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it2.next();
            Collection<V> c2 = d.this.c();
            c2.addAll(next.getValue());
            it2.remove();
            return ag.a(next.getKey(), d.this.a((Collection) c2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public NavigableSet<K> e() {
            return new e((NavigableMap) super.d());
        }

        @Override // com.google.common.collect.d.g
        public final /* bridge */ /* synthetic */ SortedSet c() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> ceilingEntry = ((NavigableMap) super.d()).ceilingEntry(k);
            if (ceilingEntry == null) {
                return null;
            }
            return a(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public final K ceilingKey(K k) {
            return (K) ((NavigableMap) super.d()).ceilingKey(k);
        }

        @Override // com.google.common.collect.d.g
        final /* bridge */ /* synthetic */ SortedMap d() {
            return (NavigableMap) super.d();
        }

        @Override // java.util.NavigableMap
        public final NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> descendingMap() {
            return new C0512d(((NavigableMap) super.d()).descendingMap());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = ((NavigableMap) super.d()).firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return a(firstEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> floorEntry = ((NavigableMap) super.d()).floorEntry(k);
            if (floorEntry == null) {
                return null;
            }
            return a(floorEntry);
        }

        @Override // java.util.NavigableMap
        public final K floorKey(K k) {
            return (K) ((NavigableMap) super.d()).floorKey(k);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new C0512d(((NavigableMap) super.d()).headMap(k, z));
        }

        @Override // com.google.common.collect.d.g, java.util.SortedMap, java.util.NavigableMap
        public final /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> higherEntry = ((NavigableMap) super.d()).higherEntry(k);
            if (higherEntry == null) {
                return null;
            }
            return a(higherEntry);
        }

        @Override // java.util.NavigableMap
        public final K higherKey(K k) {
            return (K) ((NavigableMap) super.d()).higherKey(k);
        }

        @Override // com.google.common.collect.d.g, com.google.common.collect.d.a, com.google.common.collect.ag.e, java.util.AbstractMap, java.util.Map
        public final /* synthetic */ Set keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = ((NavigableMap) super.d()).lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return a(lastEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> lowerEntry = ((NavigableMap) super.d()).lowerEntry(k);
            if (lowerEntry == null) {
                return null;
            }
            return a(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public final K lowerKey(K k) {
            return (K) ((NavigableMap) super.d()).lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet<K> navigableKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> pollFirstEntry() {
            return a(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> pollLastEntry() {
            return a(descendingMap().entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new C0512d(((NavigableMap) super.d()).subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.d.g, java.util.SortedMap, java.util.NavigableMap
        public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new C0512d(((NavigableMap) super.d()).tailMap(k, z));
        }

        @Override // com.google.common.collect.d.g, java.util.SortedMap, java.util.NavigableMap
        public final /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$e.class */
    public final class e extends d<K, V>.h implements NavigableSet<K> {
        e(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // com.google.common.collect.d.h
        final /* bridge */ /* synthetic */ SortedMap a() {
            return (NavigableMap) super.a();
        }

        @Override // java.util.NavigableSet
        public final K ceiling(K k) {
            return (K) ((NavigableMap) super.a()).ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public final Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> descendingSet() {
            return new e(((NavigableMap) super.a()).descendingMap());
        }

        @Override // java.util.NavigableSet
        public final K floor(K k) {
            return (K) ((NavigableMap) super.a()).floorKey(k);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> headSet(K k, boolean z) {
            return new e(((NavigableMap) super.a()).headMap(k, z));
        }

        @Override // com.google.common.collect.d.h, java.util.SortedSet, java.util.NavigableSet
        public final /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // java.util.NavigableSet
        public final K higher(K k) {
            return (K) ((NavigableMap) super.a()).higherKey(k);
        }

        @Override // java.util.NavigableSet
        public final K lower(K k) {
            return (K) ((NavigableMap) super.a()).lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public final K pollFirst() {
            return (K) ab.c(iterator());
        }

        @Override // java.util.NavigableSet
        public final K pollLast() {
            return (K) ab.c(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new e(((NavigableMap) super.a()).subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.d.h, java.util.SortedSet, java.util.NavigableSet
        public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> tailSet(K k, boolean z) {
            return new e(((NavigableMap) super.a()).tailMap(k, z));
        }

        @Override // com.google.common.collect.d.h, java.util.SortedSet, java.util.NavigableSet
        public final /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$f.class */
    public final class f extends d<K, V>.j implements RandomAccess {
        f(d dVar, K k, List<V> list, d<K, V>.i iVar) {
            super(k, list, iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$g.class */
    public class g extends d<K, V>.a implements SortedMap<K, Collection<V>> {

        /* renamed from: d  reason: collision with root package name */
        SortedSet<K> f32067d;

        g(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public SortedSet<K> e() {
            return new h(d());
        }

        /* renamed from: c */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f32067d;
            SortedSet<K> sortedSet2 = sortedSet;
            if (sortedSet == null) {
                sortedSet2 = e();
                this.f32067d = sortedSet2;
            }
            return sortedSet2;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return d().comparator();
        }

        SortedMap<K, Collection<V>> d() {
            return (SortedMap) this.f32051a;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return d().firstKey();
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new g(d().headMap(k));
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return d().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new g(d().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new g(d().tailMap(k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$h.class */
    public class h extends d<K, V>.c implements SortedSet<K> {
        h(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        SortedMap<K, Collection<V>> a() {
            return (SortedMap) this.f31995d;
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return a().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return a().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new h(a().headMap(k));
        }

        @Override // java.util.SortedSet
        public K last() {
            return a().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new h(a().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new h(a().tailMap(k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$i.class */
    public class i extends AbstractCollection<V> {

        /* renamed from: a  reason: collision with root package name */
        final K f32069a;

        /* renamed from: b  reason: collision with root package name */
        Collection<V> f32070b;

        /* renamed from: c  reason: collision with root package name */
        final d<K, V>.i f32071c;

        /* renamed from: d  reason: collision with root package name */
        final Collection<V> f32072d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$i$a.class */
        public class a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<V> f32073a;

            /* renamed from: b  reason: collision with root package name */
            final Collection<V> f32074b;

            a() {
                this.f32074b = i.this.f32070b;
                this.f32073a = d.b((Collection) i.this.f32070b);
            }

            a(Iterator<V> it2) {
                this.f32074b = i.this.f32070b;
                this.f32073a = it2;
            }

            final void a() {
                i.this.a();
                if (i.this.f32070b != this.f32074b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.f32073a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                a();
                return this.f32073a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f32073a.remove();
                d.b(d.this);
                i.this.b();
            }
        }

        i(K k, Collection<V> collection, d<K, V>.i iVar) {
            this.f32069a = k;
            this.f32070b = collection;
            this.f32071c = iVar;
            this.f32072d = iVar == null ? null : iVar.f32070b;
        }

        final void a() {
            Collection<V> collection;
            d<K, V>.i iVar = this.f32071c;
            if (iVar != null) {
                iVar.a();
                if (this.f32071c.f32070b != this.f32072d) {
                    throw new ConcurrentModificationException();
                }
            } else if (this.f32070b.isEmpty() && (collection = (Collection) d.this.f32049a.get(this.f32069a)) != null) {
                this.f32070b = collection;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            a();
            boolean isEmpty = this.f32070b.isEmpty();
            boolean add = this.f32070b.add(v);
            if (add) {
                d.c(d.this);
                if (isEmpty) {
                    c();
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
            boolean addAll = this.f32070b.addAll(collection);
            if (addAll) {
                d.a(d.this, this.f32070b.size() - size);
                if (size == 0) {
                    c();
                }
            }
            return addAll;
        }

        final void b() {
            d<K, V>.i iVar = this;
            while (true) {
                d<K, V>.i iVar2 = iVar.f32071c;
                if (iVar2 == null) {
                    break;
                }
                iVar = iVar2;
            }
            if (iVar.f32070b.isEmpty()) {
                d.this.f32049a.remove(iVar.f32069a);
            }
        }

        final void c() {
            d<K, V>.i iVar = this;
            while (true) {
                d<K, V>.i iVar2 = iVar.f32071c;
                if (iVar2 != null) {
                    iVar = iVar2;
                } else {
                    d.this.f32049a.put(iVar.f32069a, iVar.f32070b);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size != 0) {
                this.f32070b.clear();
                d.b(d.this, size);
                b();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            a();
            return this.f32070b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            a();
            return this.f32070b.containsAll(collection);
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            a();
            return this.f32070b.equals(obj);
        }

        @Override // java.util.Collection
        public int hashCode() {
            a();
            return this.f32070b.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            a();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            a();
            boolean remove = this.f32070b.remove(obj);
            if (remove) {
                d.b(d.this);
                b();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f32070b.removeAll(collection);
            if (removeAll) {
                d.a(d.this, this.f32070b.size() - size);
                b();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            m.a(collection);
            int size = size();
            boolean retainAll = this.f32070b.retainAll(collection);
            if (retainAll) {
                d.a(d.this, this.f32070b.size() - size);
                b();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            a();
            return this.f32070b.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            a();
            return this.f32070b.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$j.class */
    public class j extends d<K, V>.i implements List<V> {

        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$j$a.class */
        final class a extends d<K, V>.i.a implements ListIterator<V> {
            a() {
                super();
            }

            public a(int i) {
                super(((List) j.this.f32070b).listIterator(i));
            }

            private ListIterator<V> b() {
                a();
                return (ListIterator) this.f32073a;
            }

            @Override // java.util.ListIterator
            public final void add(V v) {
                boolean isEmpty = j.this.isEmpty();
                b().add(v);
                d.c(d.this);
                if (isEmpty) {
                    j.this.c();
                }
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return b().nextIndex();
            }

            @Override // java.util.ListIterator
            public final V previous() {
                return b().previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return b().previousIndex();
            }

            @Override // java.util.ListIterator
            public final void set(V v) {
                b().set(v);
            }
        }

        j(K k, List<V> list, d<K, V>.i iVar) {
            super(k, list, iVar);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            a();
            boolean isEmpty = this.f32070b.isEmpty();
            ((List) this.f32070b).add(i, v);
            d.c(d.this);
            if (isEmpty) {
                c();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = ((List) this.f32070b).addAll(i, collection);
            if (addAll) {
                d.a(d.this, this.f32070b.size() - size);
                if (size == 0) {
                    c();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        public V get(int i) {
            a();
            return (V) ((List) this.f32070b).get(i);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            a();
            return ((List) this.f32070b).indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            a();
            return ((List) this.f32070b).lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            a();
            return new a();
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            a();
            return new a(i);
        }

        @Override // java.util.List
        public V remove(int i) {
            a();
            V v = (V) ((List) this.f32070b).remove(i);
            d.b(d.this);
            b();
            return v;
        }

        @Override // java.util.List
        public V set(int i, V v) {
            a();
            return (V) ((List) this.f32070b).set(i, v);
        }

        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            a();
            return d.this.a(this.f32069a, ((List) this.f32070b).subList(i, i2), this.f32071c == null ? this : this.f32071c);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Map<K, Collection<V>> map) {
        m.a(map.isEmpty());
        this.f32049a = map;
    }

    static /* synthetic */ int a(d dVar, int i2) {
        int i3 = dVar.f32050b + i2;
        dVar.f32050b = i3;
        return i3;
    }

    static /* synthetic */ void a(d dVar, Object obj) {
        Collection collection = (Collection) ag.c(dVar.f32049a, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            dVar.f32050b -= size;
        }
    }

    static /* synthetic */ int b(d dVar) {
        int i2 = dVar.f32050b;
        dVar.f32050b = i2 - 1;
        return i2;
    }

    static /* synthetic */ int b(d dVar, int i2) {
        int i3 = dVar.f32050b - i2;
        dVar.f32050b = i3;
        return i3;
    }

    static /* synthetic */ Iterator b(Collection collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    static /* synthetic */ int c(d dVar) {
        int i2 = dVar.f32050b;
        dVar.f32050b = i2 + 1;
        return i2;
    }

    @Override // com.google.common.collect.ah
    public Collection<V> a(K k) {
        Collection<V> collection = this.f32049a.get(k);
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = c();
        }
        return a((d<K, V>) k, (Collection) collection2);
    }

    Collection<V> a(K k, Collection<V> collection) {
        return new i(k, collection, null);
    }

    <E> Collection<E> a(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<V> a(K k, List<V> list, d<K, V>.i iVar) {
        return list instanceof RandomAccess ? new f(this, k, list, iVar) : new j(k, list, iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Map<K, Collection<V>> map) {
        this.f32049a = map;
        this.f32050b = 0;
        for (Collection<V> collection : map.values()) {
            m.a(!collection.isEmpty());
            this.f32050b += collection.size();
        }
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    public boolean a(K k, V v) {
        Collection<V> collection = this.f32049a.get(k);
        if (collection == null) {
            Collection<V> c2 = c();
            if (c2.add(v)) {
                this.f32050b++;
                this.f32049a.put(k, c2);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (!collection.add(v)) {
            return false;
        } else {
            this.f32050b++;
            return true;
        }
    }

    abstract Collection<V> c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, Collection<V>> d() {
        return this.f32049a;
    }

    @Override // com.google.common.collect.ah
    public final int e() {
        return this.f32050b;
    }

    @Override // com.google.common.collect.ah
    public final void f() {
        for (Collection<V> collection : this.f32049a.values()) {
            collection.clear();
        }
        this.f32049a.clear();
        this.f32050b = 0;
    }

    @Override // com.google.common.collect.f
    Set<K> g() {
        return new c(this.f32049a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<K> h() {
        Map<K, Collection<V>> map = this.f32049a;
        return map instanceof NavigableMap ? new e((NavigableMap) this.f32049a) : map instanceof SortedMap ? new h((SortedMap) this.f32049a) : new c(this.f32049a);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    public final Collection<V> i() {
        return super.i();
    }

    @Override // com.google.common.collect.f
    final Collection<V> j() {
        return new f.c();
    }

    @Override // com.google.common.collect.f
    final Iterator<V> k() {
        return new d<K, V>.b<V>(this) { // from class: com.google.common.collect.d.1
            @Override // com.google.common.collect.d.b
            final V a(K k, V v) {
                return v;
            }
        };
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    public final Collection<Map.Entry<K, V>> l() {
        return super.l();
    }

    @Override // com.google.common.collect.f
    final Collection<Map.Entry<K, V>> m() {
        return this instanceof au ? new f.b(this) : new f.a();
    }

    @Override // com.google.common.collect.f
    final Iterator<Map.Entry<K, V>> n() {
        return new d<K, V>.b<Map.Entry<K, V>>(this) { // from class: com.google.common.collect.d.2
            @Override // com.google.common.collect.d.b
            final /* bridge */ /* synthetic */ Object a(Object obj, Object obj2) {
                return ag.a(obj, obj2);
            }
        };
    }

    @Override // com.google.common.collect.f
    Map<K, Collection<V>> o() {
        return new a(this.f32049a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, Collection<V>> p() {
        Map<K, Collection<V>> map = this.f32049a;
        return map instanceof NavigableMap ? new C0512d((NavigableMap) this.f32049a) : map instanceof SortedMap ? new g((SortedMap) this.f32049a) : new a(this.f32049a);
    }
}
