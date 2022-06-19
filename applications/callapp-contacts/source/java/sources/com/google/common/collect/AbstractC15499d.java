package com.google.common.collect;

import com.google.common.base.C15391m;
import com.google.common.collect.AbstractC15518f;
import com.google.common.collect.C15403ab;
import com.google.common.collect.C15446ag;
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
/* renamed from: com.google.common.collect.d */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/d.class */
public abstract class AbstractC15499d<K, V> extends AbstractC15518f<K, V> implements Serializable {

    /* renamed from: a */
    private transient Map<K, Collection<V>> f55778a;

    /* renamed from: b */
    private transient int f55779b;

    /* renamed from: com.google.common.collect.d$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$a.class */
    public class C15502a extends C15446ag.AbstractC15455e<K, Collection<V>> {

        /* renamed from: a */
        final transient Map<K, Collection<V>> f55780a;

        /* renamed from: com.google.common.collect.d$a$a */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$a$a.class */
        final class C15503a extends C15446ag.AbstractC15452b<K, Collection<V>> {
            C15503a() {
                C15502a.this = r4;
            }

            @Override // com.google.common.collect.C15446ag.AbstractC15452b
            /* renamed from: a */
            final Map<K, Collection<V>> mo8796a() {
                return C15502a.this;
            }

            @Override // com.google.common.collect.C15446ag.AbstractC15452b, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                return C15525j.m8779a(C15502a.this.f55780a.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new C15504b();
            }

            @Override // com.google.common.collect.C15446ag.AbstractC15452b, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                AbstractC15499d.m8811a(AbstractC15499d.this, ((Map.Entry) obj).getKey());
                return true;
            }
        }

        /* renamed from: com.google.common.collect.d$a$b */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$a$b.class */
        final class C15504b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: a */
            final Iterator<Map.Entry<K, Collection<V>>> f55783a;

            /* renamed from: b */
            Collection<V> f55784b;

            C15504b() {
                C15502a.this = r4;
                this.f55783a = r4.f55780a.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f55783a.hasNext();
            }

            @Override // java.util.Iterator
            public final /* synthetic */ Object next() {
                Map.Entry<K, Collection<V>> next = this.f55783a.next();
                this.f55784b = next.getValue();
                return C15502a.this.m8797a(next);
            }

            @Override // java.util.Iterator
            public final void remove() {
                C15391m.m8933b(this.f55784b != null, "no calls to next() since the last call to remove()");
                this.f55783a.remove();
                AbstractC15499d.m8805b(AbstractC15499d.this, this.f55784b.size());
                this.f55784b.clear();
                this.f55784b = null;
            }
        }

        C15502a(Map<K, Collection<V>> map) {
            AbstractC15499d.this = r4;
            this.f55780a = map;
        }

        /* renamed from: a */
        final Map.Entry<K, Collection<V>> m8797a(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return C15446ag.m8846a(key, AbstractC15499d.this.mo8810a((AbstractC15499d) key, (Collection) entry.getValue()));
        }

        @Override // com.google.common.collect.C15446ag.AbstractC15455e
        /* renamed from: a */
        protected final Set<Map.Entry<K, Collection<V>>> mo8798a() {
            return new C15503a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f55780a == AbstractC15499d.this.f55778a) {
                AbstractC15499d.this.mo8680f();
            } else {
                C15403ab.m8910d(new C15504b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return C15446ag.m8843b(this.f55780a, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.f55780a.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public /* synthetic */ Object get(Object obj) {
            Collection<V> collection = (Collection) C15446ag.m8844a((Map<?, Object>) this.f55780a, obj);
            if (collection == null) {
                return null;
            }
            return AbstractC15499d.this.mo8810a((AbstractC15499d) obj, (Collection) collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f55780a.hashCode();
        }

        @Override // com.google.common.collect.C15446ag.AbstractC15455e, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return AbstractC15499d.this.mo8671q();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public /* synthetic */ Object remove(Object obj) {
            Collection<V> remove = this.f55780a.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> mo8803c = AbstractC15499d.this.mo8803c();
            mo8803c.addAll(remove);
            AbstractC15499d.m8805b(AbstractC15499d.this, remove.size());
            remove.clear();
            return mo8803c;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f55780a.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f55780a.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.d$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$b.class */
    public abstract class AbstractC15505b<T> implements Iterator<T> {

        /* renamed from: a */
        final Iterator<Map.Entry<K, Collection<V>>> f55786a;

        /* renamed from: b */
        K f55787b = null;

        /* renamed from: c */
        Collection<V> f55788c = null;

        /* renamed from: d */
        Iterator<V> f55789d = C15403ab.EnumC15406b.INSTANCE;

        AbstractC15505b() {
            AbstractC15499d.this = r4;
            this.f55786a = (Iterator<Map.Entry<K, V>>) r4.f55778a.entrySet().iterator();
        }

        /* renamed from: a */
        abstract T mo8795a(K k, V v);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f55786a.hasNext() || this.f55789d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f55789d.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f55786a.next();
                this.f55787b = next.getKey();
                Collection<V> value = next.getValue();
                this.f55788c = value;
                this.f55789d = value.iterator();
            }
            return mo8795a(this.f55787b, this.f55789d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f55789d.remove();
            if (this.f55788c.isEmpty()) {
                this.f55786a.remove();
            }
            AbstractC15499d.m8806b(AbstractC15499d.this);
        }
    }

    /* renamed from: com.google.common.collect.d$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$c.class */
    public class C15506c extends C15446ag.C15453c<K, Collection<V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15506c(Map<K, Collection<V>> map) {
            super(map);
            AbstractC15499d.this = r4;
        }

        @Override // com.google.common.collect.C15446ag.C15453c, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C15403ab.m8910d(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.f55720d.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return this == obj || this.f55720d.keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.f55720d.keySet().hashCode();
        }

        @Override // com.google.common.collect.C15446ag.C15453c, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            final Iterator<Map.Entry<K, V>> it2 = this.f55720d.entrySet().iterator();
            return new Iterator<K>() { // from class: com.google.common.collect.d.c.1

                /* renamed from: a */
                Map.Entry<K, Collection<V>> f55792a;

                @Override // java.util.Iterator
                public final boolean hasNext() {
                    return it2.hasNext();
                }

                @Override // java.util.Iterator
                public final K next() {
                    Map.Entry<K, Collection<V>> entry = (Map.Entry) it2.next();
                    this.f55792a = entry;
                    return entry.getKey();
                }

                @Override // java.util.Iterator
                public final void remove() {
                    C15391m.m8933b(this.f55792a != null, "no calls to next() since the last call to remove()");
                    Collection<V> value = this.f55792a.getValue();
                    it2.remove();
                    AbstractC15499d.m8805b(AbstractC15499d.this, value.size());
                    value.clear();
                    this.f55792a = null;
                }
            };
        }

        @Override // com.google.common.collect.C15446ag.C15453c, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i;
            Collection collection = (Collection) this.f55720d.remove(obj);
            if (collection != null) {
                i = collection.size();
                collection.clear();
                AbstractC15499d.m8805b(AbstractC15499d.this, i);
            } else {
                i = 0;
            }
            return i > 0;
        }
    }

    /* renamed from: com.google.common.collect.d$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$d.class */
    public final class C15508d extends AbstractC15499d<K, V>.C15511g implements NavigableMap<K, Collection<V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15508d(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
            AbstractC15499d.this = r5;
        }

        /* renamed from: a */
        private Map.Entry<K, Collection<V>> m8794a(Iterator<Map.Entry<K, Collection<V>>> it2) {
            if (!it2.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it2.next();
            Collection<V> mo8803c = AbstractC15499d.this.mo8803c();
            mo8803c.addAll(next.getValue());
            it2.remove();
            return C15446ag.m8846a(next.getKey(), AbstractC15499d.this.mo8808a((Collection) mo8803c));
        }

        /* renamed from: f */
        public NavigableSet<K> mo8789e() {
            return new C15509e((NavigableMap) super.mo8790d());
        }

        @Override // com.google.common.collect.AbstractC15499d.C15511g
        /* renamed from: c */
        public final /* bridge */ /* synthetic */ SortedSet mo8791c() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> ceilingEntry = ((NavigableMap) super.mo8790d()).ceilingEntry(k);
            if (ceilingEntry == null) {
                return null;
            }
            return m8797a(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public final K ceilingKey(K k) {
            return (K) ((NavigableMap) super.mo8790d()).ceilingKey(k);
        }

        @Override // com.google.common.collect.AbstractC15499d.C15511g
        /* renamed from: d */
        final /* bridge */ /* synthetic */ SortedMap mo8790d() {
            return (NavigableMap) super.mo8790d();
        }

        @Override // java.util.NavigableMap
        public final NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> descendingMap() {
            return new C15508d(((NavigableMap) super.mo8790d()).descendingMap());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = ((NavigableMap) super.mo8790d()).firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return m8797a(firstEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> floorEntry = ((NavigableMap) super.mo8790d()).floorEntry(k);
            if (floorEntry == null) {
                return null;
            }
            return m8797a(floorEntry);
        }

        @Override // java.util.NavigableMap
        public final K floorKey(K k) {
            return (K) ((NavigableMap) super.mo8790d()).floorKey(k);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new C15508d(((NavigableMap) super.mo8790d()).headMap(k, z));
        }

        @Override // com.google.common.collect.AbstractC15499d.C15511g, java.util.SortedMap, java.util.NavigableMap
        public final /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> higherEntry = ((NavigableMap) super.mo8790d()).higherEntry(k);
            if (higherEntry == null) {
                return null;
            }
            return m8797a(higherEntry);
        }

        @Override // java.util.NavigableMap
        public final K higherKey(K k) {
            return (K) ((NavigableMap) super.mo8790d()).higherKey(k);
        }

        @Override // com.google.common.collect.AbstractC15499d.C15511g, com.google.common.collect.AbstractC15499d.C15502a, com.google.common.collect.C15446ag.AbstractC15455e, java.util.AbstractMap, java.util.Map
        public final /* synthetic */ Set keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = ((NavigableMap) super.mo8790d()).lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return m8797a(lastEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> lowerEntry = ((NavigableMap) super.mo8790d()).lowerEntry(k);
            if (lowerEntry == null) {
                return null;
            }
            return m8797a(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public final K lowerKey(K k) {
            return (K) ((NavigableMap) super.mo8790d()).lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet<K> navigableKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> pollFirstEntry() {
            return m8794a(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, Collection<V>> pollLastEntry() {
            return m8794a(descendingMap().entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new C15508d(((NavigableMap) super.mo8790d()).subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.AbstractC15499d.C15511g, java.util.SortedMap, java.util.NavigableMap
        public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new C15508d(((NavigableMap) super.mo8790d()).tailMap(k, z));
        }

        @Override // com.google.common.collect.AbstractC15499d.C15511g, java.util.SortedMap, java.util.NavigableMap
        public final /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }
    }

    /* renamed from: com.google.common.collect.d$e */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$e.class */
    public final class C15509e extends AbstractC15499d<K, V>.C15512h implements NavigableSet<K> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15509e(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
            AbstractC15499d.this = r5;
        }

        @Override // com.google.common.collect.AbstractC15499d.C15512h
        /* renamed from: a */
        final /* bridge */ /* synthetic */ SortedMap mo8788a() {
            return (NavigableMap) super.mo8788a();
        }

        @Override // java.util.NavigableSet
        public final K ceiling(K k) {
            return (K) ((NavigableMap) super.mo8788a()).ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public final Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> descendingSet() {
            return new C15509e(((NavigableMap) super.mo8788a()).descendingMap());
        }

        @Override // java.util.NavigableSet
        public final K floor(K k) {
            return (K) ((NavigableMap) super.mo8788a()).floorKey(k);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> headSet(K k, boolean z) {
            return new C15509e(((NavigableMap) super.mo8788a()).headMap(k, z));
        }

        @Override // com.google.common.collect.AbstractC15499d.C15512h, java.util.SortedSet, java.util.NavigableSet
        public final /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // java.util.NavigableSet
        public final K higher(K k) {
            return (K) ((NavigableMap) super.mo8788a()).higherKey(k);
        }

        @Override // java.util.NavigableSet
        public final K lower(K k) {
            return (K) ((NavigableMap) super.mo8788a()).lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public final K pollFirst() {
            return (K) C15403ab.m8911c(iterator());
        }

        @Override // java.util.NavigableSet
        public final K pollLast() {
            return (K) C15403ab.m8911c(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new C15509e(((NavigableMap) super.mo8788a()).subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.AbstractC15499d.C15512h, java.util.SortedSet, java.util.NavigableSet
        public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet<K> tailSet(K k, boolean z) {
            return new C15509e(((NavigableMap) super.mo8788a()).tailMap(k, z));
        }

        @Override // com.google.common.collect.AbstractC15499d.C15512h, java.util.SortedSet, java.util.NavigableSet
        public final /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }

    /* renamed from: com.google.common.collect.d$f */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$f.class */
    public final class C15510f extends AbstractC15499d<K, V>.C15515j implements RandomAccess {
        C15510f(AbstractC15499d abstractC15499d, K k, List<V> list, AbstractC15499d<K, V>.C15513i c15513i) {
            super(k, list, c15513i);
        }
    }

    /* renamed from: com.google.common.collect.d$g */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$g.class */
    public class C15511g extends AbstractC15499d<K, V>.C15502a implements SortedMap<K, Collection<V>> {

        /* renamed from: d */
        SortedSet<K> f55797d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15511g(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
            AbstractC15499d.this = r5;
        }

        /* renamed from: b */
        public SortedSet<K> mo8789e() {
            return new C15512h(mo8790d());
        }

        /* renamed from: c */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f55797d;
            SortedSet<K> sortedSet2 = sortedSet;
            if (sortedSet == null) {
                sortedSet2 = mo8789e();
                this.f55797d = sortedSet2;
            }
            return sortedSet2;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return mo8790d().comparator();
        }

        /* renamed from: d */
        SortedMap<K, Collection<V>> mo8790d() {
            return (SortedMap) this.f55780a;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return mo8790d().firstKey();
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new C15511g(mo8790d().headMap(k));
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return mo8790d().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new C15511g(mo8790d().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new C15511g(mo8790d().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.d$h */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$h.class */
    public class C15512h extends AbstractC15499d<K, V>.C15506c implements SortedSet<K> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15512h(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
            AbstractC15499d.this = r5;
        }

        /* renamed from: a */
        SortedMap<K, Collection<V>> mo8788a() {
            return (SortedMap) this.f55720d;
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return mo8788a().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return mo8788a().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new C15512h(mo8788a().headMap(k));
        }

        @Override // java.util.SortedSet
        public K last() {
            return mo8788a().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new C15512h(mo8788a().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new C15512h(mo8788a().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.d$i */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$i.class */
    public class C15513i extends AbstractCollection<V> {

        /* renamed from: a */
        final K f55800a;

        /* renamed from: b */
        Collection<V> f55801b;

        /* renamed from: c */
        final AbstractC15499d<K, V>.C15513i f55802c;

        /* renamed from: d */
        final Collection<V> f55803d;

        /* renamed from: com.google.common.collect.d$i$a */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$i$a.class */
        public class C15514a implements Iterator<V> {

            /* renamed from: a */
            final Iterator<V> f55805a;

            /* renamed from: b */
            final Collection<V> f55806b;

            C15514a() {
                C15513i.this = r4;
                this.f55806b = r4.f55801b;
                this.f55805a = AbstractC15499d.m8804b((Collection) r4.f55801b);
            }

            C15514a(Iterator<V> it2) {
                C15513i.this = r4;
                this.f55806b = r4.f55801b;
                this.f55805a = it2;
            }

            /* renamed from: a */
            final void m8784a() {
                C15513i.this.m8787a();
                if (C15513i.this.f55801b == this.f55806b) {
                    return;
                }
                throw new ConcurrentModificationException();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m8784a();
                return this.f55805a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                m8784a();
                return this.f55805a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f55805a.remove();
                AbstractC15499d.m8806b(AbstractC15499d.this);
                C15513i.this.m8786b();
            }
        }

        C15513i(K k, Collection<V> collection, AbstractC15499d<K, V>.C15513i c15513i) {
            AbstractC15499d.this = r4;
            this.f55800a = k;
            this.f55801b = collection;
            this.f55802c = c15513i;
            this.f55803d = c15513i == null ? null : c15513i.f55801b;
        }

        /* renamed from: a */
        final void m8787a() {
            Collection<V> collection;
            AbstractC15499d<K, V>.C15513i c15513i = this.f55802c;
            if (c15513i != null) {
                c15513i.m8787a();
                if (this.f55802c.f55801b != this.f55803d) {
                    throw new ConcurrentModificationException();
                }
            } else if (!this.f55801b.isEmpty() || (collection = (Collection) AbstractC15499d.this.f55778a.get(this.f55800a)) == null) {
            } else {
                this.f55801b = collection;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            m8787a();
            boolean isEmpty = this.f55801b.isEmpty();
            boolean add = this.f55801b.add(v);
            if (add) {
                AbstractC15499d.m8802c(AbstractC15499d.this);
                if (isEmpty) {
                    m8785c();
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
            boolean addAll = this.f55801b.addAll(collection);
            if (addAll) {
                AbstractC15499d.m8812a(AbstractC15499d.this, this.f55801b.size() - size);
                if (size == 0) {
                    m8785c();
                }
            }
            return addAll;
        }

        /* renamed from: b */
        final void m8786b() {
            C15513i c15513i;
            AbstractC15499d<K, V>.C15513i c15513i2 = this;
            while (true) {
                c15513i = c15513i2;
                AbstractC15499d<K, V>.C15513i c15513i3 = c15513i.f55802c;
                if (c15513i3 == null) {
                    break;
                }
                c15513i2 = c15513i3;
            }
            if (c15513i.f55801b.isEmpty()) {
                AbstractC15499d.this.f55778a.remove(c15513i.f55800a);
            }
        }

        /* renamed from: c */
        final void m8785c() {
            AbstractC15499d<K, V>.C15513i c15513i = this;
            while (true) {
                C15513i c15513i2 = c15513i;
                AbstractC15499d<K, V>.C15513i c15513i3 = c15513i2.f55802c;
                if (c15513i3 == null) {
                    AbstractC15499d.this.f55778a.put(c15513i2.f55800a, c15513i2.f55801b);
                    return;
                }
                c15513i = c15513i3;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f55801b.clear();
            AbstractC15499d.m8805b(AbstractC15499d.this, size);
            m8786b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            m8787a();
            return this.f55801b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            m8787a();
            return this.f55801b.containsAll(collection);
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            m8787a();
            return this.f55801b.equals(obj);
        }

        @Override // java.util.Collection
        public int hashCode() {
            m8787a();
            return this.f55801b.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            m8787a();
            return new C15514a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            m8787a();
            boolean remove = this.f55801b.remove(obj);
            if (remove) {
                AbstractC15499d.m8806b(AbstractC15499d.this);
                m8786b();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f55801b.removeAll(collection);
            if (removeAll) {
                AbstractC15499d.m8812a(AbstractC15499d.this, this.f55801b.size() - size);
                m8786b();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            C15391m.m8946a(collection);
            int size = size();
            boolean retainAll = this.f55801b.retainAll(collection);
            if (retainAll) {
                AbstractC15499d.m8812a(AbstractC15499d.this, this.f55801b.size() - size);
                m8786b();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            m8787a();
            return this.f55801b.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            m8787a();
            return this.f55801b.toString();
        }
    }

    /* renamed from: com.google.common.collect.d$j */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$j.class */
    public class C15515j extends AbstractC15499d<K, V>.C15513i implements List<V> {

        /* renamed from: com.google.common.collect.d$j$a */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/d$j$a.class */
        final class C15516a extends AbstractC15499d<K, V>.C15513i.C15514a implements ListIterator<V> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C15516a() {
                super();
                C15515j.this = r4;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15516a(int i) {
                super(((List) r6.f55801b).listIterator(i));
                C15515j.this = r6;
            }

            /* renamed from: b */
            private ListIterator<V> m8783b() {
                m8784a();
                return (ListIterator) this.f55805a;
            }

            @Override // java.util.ListIterator
            public final void add(V v) {
                boolean isEmpty = C15515j.this.isEmpty();
                m8783b().add(v);
                AbstractC15499d.m8802c(AbstractC15499d.this);
                if (isEmpty) {
                    C15515j.this.m8785c();
                }
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return m8783b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return m8783b().nextIndex();
            }

            @Override // java.util.ListIterator
            public final V previous() {
                return m8783b().previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return m8783b().previousIndex();
            }

            @Override // java.util.ListIterator
            public final void set(V v) {
                m8783b().set(v);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15515j(K k, List<V> list, AbstractC15499d<K, V>.C15513i c15513i) {
            super(k, list, c15513i);
            AbstractC15499d.this = r7;
        }

        @Override // java.util.List
        public void add(int i, V v) {
            m8787a();
            boolean isEmpty = this.f55801b.isEmpty();
            ((List) this.f55801b).add(i, v);
            AbstractC15499d.m8802c(AbstractC15499d.this);
            if (isEmpty) {
                m8785c();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = ((List) this.f55801b).addAll(i, collection);
            if (addAll) {
                AbstractC15499d.m8812a(AbstractC15499d.this, this.f55801b.size() - size);
                if (size == 0) {
                    m8785c();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        public V get(int i) {
            m8787a();
            return (V) ((List) this.f55801b).get(i);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            m8787a();
            return ((List) this.f55801b).indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            m8787a();
            return ((List) this.f55801b).lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            m8787a();
            return new C15516a();
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            m8787a();
            return new C15516a(i);
        }

        @Override // java.util.List
        public V remove(int i) {
            m8787a();
            V v = (V) ((List) this.f55801b).remove(i);
            AbstractC15499d.m8806b(AbstractC15499d.this);
            m8786b();
            return v;
        }

        @Override // java.util.List
        public V set(int i, V v) {
            m8787a();
            return (V) ((List) this.f55801b).set(i, v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [com.google.common.collect.d<K, V>$i] */
        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            m8787a();
            return AbstractC15499d.this.m8809a(this.f55800a, ((List) this.f55801b).subList(i, i2), this.f55802c == null ? this : this.f55802c);
        }
    }

    public AbstractC15499d(Map<K, Collection<V>> map) {
        C15391m.m8943a(map.isEmpty());
        this.f55778a = map;
    }

    /* renamed from: a */
    static /* synthetic */ int m8812a(AbstractC15499d abstractC15499d, int i) {
        int i2 = abstractC15499d.f55779b + i;
        abstractC15499d.f55779b = i2;
        return i2;
    }

    /* renamed from: a */
    static /* synthetic */ void m8811a(AbstractC15499d abstractC15499d, Object obj) {
        Collection collection = (Collection) C15446ag.m8842c(abstractC15499d.f55778a, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            abstractC15499d.f55779b -= size;
        }
    }

    /* renamed from: b */
    static /* synthetic */ int m8806b(AbstractC15499d abstractC15499d) {
        int i = abstractC15499d.f55779b;
        abstractC15499d.f55779b = i - 1;
        return i;
    }

    /* renamed from: b */
    static /* synthetic */ int m8805b(AbstractC15499d abstractC15499d, int i) {
        int i2 = abstractC15499d.f55779b - i;
        abstractC15499d.f55779b = i2;
        return i2;
    }

    /* renamed from: b */
    static /* synthetic */ Iterator m8804b(Collection collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* renamed from: c */
    static /* synthetic */ int m8802c(AbstractC15499d abstractC15499d) {
        int i = abstractC15499d.f55779b;
        abstractC15499d.f55779b = i + 1;
        return i;
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: a */
    public Collection<V> mo8690a(K k) {
        Collection<V> collection = this.f55778a.get(k);
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = mo8803c();
        }
        return mo8810a((AbstractC15499d<K, V>) k, (Collection) collection2);
    }

    /* renamed from: a */
    Collection<V> mo8810a(K k, Collection<V> collection) {
        return new C15513i(k, collection, null);
    }

    /* renamed from: a */
    <E> Collection<E> mo8808a(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    /* renamed from: a */
    public final List<V> m8809a(K k, List<V> list, AbstractC15499d<K, V>.C15513i c15513i) {
        return list instanceof RandomAccess ? new C15510f(this, k, list, c15513i) : new C15515j(k, list, c15513i);
    }

    /* renamed from: a */
    public final void m8807a(Map<K, Collection<V>> map) {
        this.f55778a = map;
        this.f55779b = 0;
        for (Collection<V> collection : map.values()) {
            C15391m.m8943a(!collection.isEmpty());
            this.f55779b += collection.size();
        }
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: a */
    public boolean mo8689a(K k, V v) {
        Collection<V> collection = this.f55778a.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.f55779b++;
            return true;
        }
        Collection<V> mo8803c = mo8803c();
        if (!mo8803c.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f55779b++;
        this.f55778a.put(k, mo8803c);
        return true;
    }

    /* renamed from: c */
    abstract Collection<V> mo8803c();

    /* renamed from: d */
    public final Map<K, Collection<V>> m8801d() {
        return this.f55778a;
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: e */
    public final int mo8681e() {
        return this.f55779b;
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: f */
    public final void mo8680f() {
        for (Collection<V> collection : this.f55778a.values()) {
            collection.clear();
        }
        this.f55778a.clear();
        this.f55779b = 0;
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: g */
    Set<K> mo8679g() {
        return new C15506c(this.f55778a);
    }

    /* renamed from: h */
    public final Set<K> m8800h() {
        Map<K, Collection<V>> map = this.f55778a;
        return map instanceof NavigableMap ? new C15509e((NavigableMap) this.f55778a) : map instanceof SortedMap ? new C15512h((SortedMap) this.f55778a) : new C15506c(this.f55778a);
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: i */
    public final Collection<V> mo8678i() {
        return super.mo8678i();
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: j */
    final Collection<V> mo8677j() {
        return new AbstractC15518f.C15521c();
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: k */
    final Iterator<V> mo8676k() {
        return new AbstractC15499d<K, V>.AbstractC15505b<V>(this) { // from class: com.google.common.collect.d.1
            @Override // com.google.common.collect.AbstractC15499d.AbstractC15505b
            /* renamed from: a */
            final V mo8795a(K k, V v) {
                return v;
            }
        };
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: l */
    public final Collection<Map.Entry<K, V>> mo8675l() {
        return super.mo8675l();
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: m */
    final Collection<Map.Entry<K, V>> mo8674m() {
        return this instanceof AbstractC15483au ? new AbstractC15518f.C15520b(this) : new AbstractC15518f.C15519a();
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: n */
    final Iterator<Map.Entry<K, V>> mo8673n() {
        return new AbstractC15499d<K, V>.AbstractC15505b<Map.Entry<K, V>>(this) { // from class: com.google.common.collect.d.2
            @Override // com.google.common.collect.AbstractC15499d.AbstractC15505b
            /* renamed from: a */
            final /* bridge */ /* synthetic */ Object mo8795a(Object obj, Object obj2) {
                return C15446ag.m8846a(obj, obj2);
            }
        };
    }

    @Override // com.google.common.collect.AbstractC15518f
    /* renamed from: o */
    Map<K, Collection<V>> mo8672o() {
        return new C15502a(this.f55778a);
    }

    /* renamed from: p */
    public final Map<K, Collection<V>> m8799p() {
        Map<K, Collection<V>> map = this.f55778a;
        return map instanceof NavigableMap ? new C15508d((NavigableMap) this.f55778a) : map instanceof SortedMap ? new C15511g((SortedMap) this.f55778a) : new C15502a(this.f55778a);
    }
}
