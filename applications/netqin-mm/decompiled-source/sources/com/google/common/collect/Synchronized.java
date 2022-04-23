package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.AbstractC4968c1;
import p131c.p161d.p266c.p269c.AbstractC4990h0;
import p131c.p161d.p266c.p269c.AbstractC4995i0;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.AbstractC4999k;
import p131c.p161d.p266c.p269c.AbstractC5027t0;
import p131c.p161d.p266c.p269c.AbstractC5032w;
import p131c.p161d.p266c.p269c.AbstractC5041z0;
import p131c.p161d.p266c.p269c.C5000k0;
import p131c.p161d.p266c.p269c.C5008o;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized.class */
public final class Synchronized {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedAsMap.class */
    public static class SynchronizedAsMap<K, V> extends SynchronizedMap<K, Collection<V>> {
        public static final long serialVersionUID = 0;
        public transient Set<Map.Entry<K, Collection<V>>> asMapEntrySet;
        public transient Collection<Collection<V>> asMapValues;

        public SynchronizedAsMap(Map<K, Collection<V>> map, Object obj) {
            super(map, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public boolean containsValue(Object obj) {
            return values().contains(obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public Set<Map.Entry<K, Collection<V>>> entrySet() {
            Set<Map.Entry<K, Collection<V>>> set;
            synchronized (this.mutex) {
                if (this.asMapEntrySet == null) {
                    this.asMapEntrySet = new SynchronizedAsMapEntries(delegate().entrySet(), this.mutex);
                }
                set = this.asMapEntrySet;
            }
            return set;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public Collection<V> get(Object obj) {
            Collection<V> d;
            synchronized (this.mutex) {
                Collection collection = (Collection) super.get(obj);
                d = collection == null ? null : Synchronized.m8030d(collection, this.mutex);
            }
            return d;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public Collection<Collection<V>> values() {
            Collection<Collection<V>> collection;
            synchronized (this.mutex) {
                if (this.asMapValues == null) {
                    this.asMapValues = new SynchronizedAsMapValues(delegate().values(), this.mutex);
                }
                collection = this.asMapValues;
            }
            return collection;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedAsMapEntries.class */
    public static class SynchronizedAsMapEntries<K, V> extends SynchronizedSet<Map.Entry<K, Collection<V>>> {
        public static final long serialVersionUID = 0;

        /* renamed from: com.google.common.collect.Synchronized$SynchronizedAsMapEntries$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedAsMapEntries$a.class */
        public class C7647a extends AbstractC4968c1<Map.Entry<K, Collection<V>>, Map.Entry<K, Collection<V>>> {

            /* renamed from: com.google.common.collect.Synchronized$SynchronizedAsMapEntries$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedAsMapEntries$a$a.class */
            public class C7648a extends AbstractC5032w<K, Collection<V>> {

                /* renamed from: a */
                public final /* synthetic */ Map.Entry f30768a;

                public C7648a(Map.Entry entry) {
                    this.f30768a = entry;
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC5032w, p131c.p161d.p266c.p269c.AbstractC5040z
                public Map.Entry<K, Collection<V>> delegate() {
                    return this.f30768a;
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC5032w, java.util.Map.Entry
                public Collection<V> getValue() {
                    return Synchronized.m8030d((Collection) this.f30768a.getValue(), SynchronizedAsMapEntries.this.mutex);
                }
            }

            public C7647a(Iterator it) {
                super(it);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
            /* renamed from: a */
            public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
                return m8029a((Map.Entry) ((Map.Entry) obj));
            }

            /* renamed from: a */
            public Map.Entry<K, Collection<V>> m8029a(Map.Entry<K, Collection<V>> entry) {
                return new C7648a(entry);
            }
        }

        public SynchronizedAsMapEntries(Set<Map.Entry<K, Collection<V>>> set, Object obj) {
            super(set, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean a;
            synchronized (this.mutex) {
                a = Maps.m8146a((Collection) delegate(), obj);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            boolean a;
            synchronized (this.mutex) {
                a = C5008o.m24654a((Collection<?>) delegate(), collection);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            boolean a;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                a = Sets.m8060a(delegate(), obj);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new C7647a(super.iterator());
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean b;
            synchronized (this.mutex) {
                b = Maps.m8130b(delegate(), obj);
            }
            return b;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            boolean a;
            synchronized (this.mutex) {
                a = Iterators.m8261a((Iterator<?>) delegate().iterator(), collection);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            boolean b;
            synchronized (this.mutex) {
                b = Iterators.m8256b((Iterator<?>) delegate().iterator(), collection);
            }
            return b;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            Object[] a;
            synchronized (this.mutex) {
                a = C5000k0.m24708a(delegate());
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.mutex) {
                tArr2 = (T[]) C5000k0.m24707a((Collection<?>) delegate(), (Object[]) tArr);
            }
            return tArr2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedAsMapValues.class */
    public static class SynchronizedAsMapValues<V> extends SynchronizedCollection<Collection<V>> {
        public static final long serialVersionUID = 0;

        /* renamed from: com.google.common.collect.Synchronized$SynchronizedAsMapValues$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedAsMapValues$a.class */
        public class C7649a extends AbstractC4968c1<Collection<V>, Collection<V>> {
            public C7649a(Iterator it) {
                super(it);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
            /* renamed from: a */
            public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
                return m8027a((Collection) ((Collection) obj));
            }

            /* renamed from: a */
            public Collection<V> m8027a(Collection<V> collection) {
                return Synchronized.m8030d(collection, SynchronizedAsMapValues.this.mutex);
            }
        }

        public SynchronizedAsMapValues(Collection<Collection<V>> collection, Object obj) {
            super(collection, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Collection<V>> iterator() {
            return new C7649a(super.iterator());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedBiMap.class */
    public static class SynchronizedBiMap<K, V> extends SynchronizedMap<K, V> implements AbstractC4999k<K, V>, Serializable {
        public static final long serialVersionUID = 0;
        public transient AbstractC4999k<V, K> inverse;
        public transient Set<V> valueSet;

        public SynchronizedBiMap(AbstractC4999k<K, V> kVar, Object obj, AbstractC4999k<V, K> kVar2) {
            super(kVar, obj);
            this.inverse = kVar2;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, com.google.common.collect.Synchronized.SynchronizedObject
        public AbstractC4999k<K, V> delegate() {
            return (AbstractC4999k) super.delegate();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4999k
        public V forcePut(K k, V v) {
            V forcePut;
            synchronized (this.mutex) {
                forcePut = delegate().forcePut(k, v);
            }
            return forcePut;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4999k
        public AbstractC4999k<V, K> inverse() {
            AbstractC4999k<V, K> kVar;
            synchronized (this.mutex) {
                if (this.inverse == null) {
                    this.inverse = new SynchronizedBiMap(delegate().inverse(), this.mutex, this);
                }
                kVar = this.inverse;
            }
            return kVar;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public Set<V> values() {
            Set<V> set;
            synchronized (this.mutex) {
                if (this.valueSet == null) {
                    this.valueSet = Synchronized.m8034b((Set) delegate().values(), this.mutex);
                }
                set = this.valueSet;
            }
            return set;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedCollection.class */
    public static class SynchronizedCollection<E> extends SynchronizedObject implements Collection<E> {
        public static final long serialVersionUID = 0;

        public SynchronizedCollection(Collection<E> collection, Object obj) {
            super(collection, obj);
        }

        @Override // java.util.Collection
        public boolean add(E e) {
            boolean add;
            synchronized (this.mutex) {
                add = delegate().add(e);
            }
            return add;
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            boolean addAll;
            synchronized (this.mutex) {
                addAll = delegate().addAll(collection);
            }
            return addAll;
        }

        @Override // java.util.Collection
        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        public boolean contains(Object obj) {
            boolean contains;
            synchronized (this.mutex) {
                contains = delegate().contains(obj);
            }
            return contains;
        }

        public boolean containsAll(Collection<?> collection) {
            boolean containsAll;
            synchronized (this.mutex) {
                containsAll = delegate().containsAll(collection);
            }
            return containsAll;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedObject
        public Collection<E> delegate() {
            return (Collection) super.delegate();
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.mutex) {
                isEmpty = delegate().isEmpty();
            }
            return isEmpty;
        }

        public Iterator<E> iterator() {
            return delegate().iterator();
        }

        public boolean remove(Object obj) {
            boolean remove;
            synchronized (this.mutex) {
                remove = delegate().remove(obj);
            }
            return remove;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(collection);
            }
            return removeAll;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean retainAll;
            synchronized (this.mutex) {
                retainAll = delegate().retainAll(collection);
            }
            return retainAll;
        }

        @Override // java.util.Collection
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] array;
            synchronized (this.mutex) {
                array = delegate().toArray();
            }
            return array;
        }

        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.mutex) {
                tArr2 = (T[]) delegate().toArray(tArr);
            }
            return tArr2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedDeque.class */
    public static final class SynchronizedDeque<E> extends SynchronizedQueue<E> implements Deque<E> {
        public static final long serialVersionUID = 0;

        public SynchronizedDeque(Deque<E> deque, Object obj) {
            super(deque, obj);
        }

        @Override // java.util.Deque
        public void addFirst(E e) {
            synchronized (this.mutex) {
                delegate().addFirst(e);
            }
        }

        @Override // java.util.Deque
        public void addLast(E e) {
            synchronized (this.mutex) {
                delegate().addLast(e);
            }
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedQueue, com.google.common.collect.Synchronized.SynchronizedCollection, com.google.common.collect.Synchronized.SynchronizedObject
        public Deque<E> delegate() {
            return (Deque) super.delegate();
        }

        @Override // java.util.Deque
        public Iterator<E> descendingIterator() {
            Iterator<E> descendingIterator;
            synchronized (this.mutex) {
                descendingIterator = delegate().descendingIterator();
            }
            return descendingIterator;
        }

        @Override // java.util.Deque
        public E getFirst() {
            E first;
            synchronized (this.mutex) {
                first = delegate().getFirst();
            }
            return first;
        }

        @Override // java.util.Deque
        public E getLast() {
            E last;
            synchronized (this.mutex) {
                last = delegate().getLast();
            }
            return last;
        }

        @Override // java.util.Deque
        public boolean offerFirst(E e) {
            boolean offerFirst;
            synchronized (this.mutex) {
                offerFirst = delegate().offerFirst(e);
            }
            return offerFirst;
        }

        @Override // java.util.Deque
        public boolean offerLast(E e) {
            boolean offerLast;
            synchronized (this.mutex) {
                offerLast = delegate().offerLast(e);
            }
            return offerLast;
        }

        @Override // java.util.Deque
        public E peekFirst() {
            E peekFirst;
            synchronized (this.mutex) {
                peekFirst = delegate().peekFirst();
            }
            return peekFirst;
        }

        @Override // java.util.Deque
        public E peekLast() {
            E peekLast;
            synchronized (this.mutex) {
                peekLast = delegate().peekLast();
            }
            return peekLast;
        }

        @Override // java.util.Deque
        public E pollFirst() {
            E pollFirst;
            synchronized (this.mutex) {
                pollFirst = delegate().pollFirst();
            }
            return pollFirst;
        }

        @Override // java.util.Deque
        public E pollLast() {
            E pollLast;
            synchronized (this.mutex) {
                pollLast = delegate().pollLast();
            }
            return pollLast;
        }

        @Override // java.util.Deque
        public E pop() {
            E pop;
            synchronized (this.mutex) {
                pop = delegate().pop();
            }
            return pop;
        }

        @Override // java.util.Deque
        public void push(E e) {
            synchronized (this.mutex) {
                delegate().push(e);
            }
        }

        @Override // java.util.Deque
        public E removeFirst() {
            E removeFirst;
            synchronized (this.mutex) {
                removeFirst = delegate().removeFirst();
            }
            return removeFirst;
        }

        @Override // java.util.Deque
        public boolean removeFirstOccurrence(Object obj) {
            boolean removeFirstOccurrence;
            synchronized (this.mutex) {
                removeFirstOccurrence = delegate().removeFirstOccurrence(obj);
            }
            return removeFirstOccurrence;
        }

        @Override // java.util.Deque
        public E removeLast() {
            E removeLast;
            synchronized (this.mutex) {
                removeLast = delegate().removeLast();
            }
            return removeLast;
        }

        @Override // java.util.Deque
        public boolean removeLastOccurrence(Object obj) {
            boolean removeLastOccurrence;
            synchronized (this.mutex) {
                removeLastOccurrence = delegate().removeLastOccurrence(obj);
            }
            return removeLastOccurrence;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedEntry.class */
    public static class SynchronizedEntry<K, V> extends SynchronizedObject implements Map.Entry<K, V> {
        public static final long serialVersionUID = 0;

        public SynchronizedEntry(Map.Entry<K, V> entry, Object obj) {
            super(entry, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedObject
        public Map.Entry<K, V> delegate() {
            return (Map.Entry) super.delegate();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean equals;
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            K key;
            synchronized (this.mutex) {
                key = delegate().getKey();
            }
            return key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            V value;
            synchronized (this.mutex) {
                value = delegate().getValue();
            }
            return value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V value;
            synchronized (this.mutex) {
                value = delegate().setValue(v);
            }
            return value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedList.class */
    public static class SynchronizedList<E> extends SynchronizedCollection<E> implements List<E> {
        public static final long serialVersionUID = 0;

        public SynchronizedList(List<E> list, Object obj) {
            super(list, obj);
        }

        @Override // java.util.List
        public void add(int i, E e) {
            synchronized (this.mutex) {
                delegate().add(i, e);
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            boolean addAll;
            synchronized (this.mutex) {
                addAll = delegate().addAll(i, collection);
            }
            return addAll;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, com.google.common.collect.Synchronized.SynchronizedObject
        public List<E> delegate() {
            return (List) super.delegate();
        }

        @Override // java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        @Override // java.util.List
        public E get(int i) {
            E e;
            synchronized (this.mutex) {
                e = delegate().get(i);
            }
            return e;
        }

        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int indexOf;
            synchronized (this.mutex) {
                indexOf = delegate().indexOf(obj);
            }
            return indexOf;
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int lastIndexOf;
            synchronized (this.mutex) {
                lastIndexOf = delegate().lastIndexOf(obj);
            }
            return lastIndexOf;
        }

        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return delegate().listIterator();
        }

        @Override // java.util.List
        public ListIterator<E> listIterator(int i) {
            return delegate().listIterator(i);
        }

        @Override // java.util.List
        public E remove(int i) {
            E remove;
            synchronized (this.mutex) {
                remove = delegate().remove(i);
            }
            return remove;
        }

        @Override // java.util.List
        public E set(int i, E e) {
            E e2;
            synchronized (this.mutex) {
                e2 = delegate().set(i, e);
            }
            return e2;
        }

        @Override // java.util.List
        public List<E> subList(int i, int i2) {
            List<E> b;
            synchronized (this.mutex) {
                b = Synchronized.m8036b((List) delegate().subList(i, i2), this.mutex);
            }
            return b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedListMultimap.class */
    public static class SynchronizedListMultimap<K, V> extends SynchronizedMultimap<K, V> implements AbstractC4990h0<K, V> {
        public static final long serialVersionUID = 0;

        public SynchronizedListMultimap(AbstractC4990h0<K, V> h0Var, Object obj) {
            super(h0Var, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Synchronized.SynchronizedObject
        public AbstractC4990h0<K, V> delegate() {
            return (AbstractC4990h0) super.delegate();
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public List<V> get(K k) {
            List<V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8036b((List) delegate().get((AbstractC4990h0<K, V>) k), this.mutex);
            }
            return b;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public List<V> removeAll(Object obj) {
            List<V> removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(obj);
            }
            return removeAll;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            List<V> replaceValues;
            synchronized (this.mutex) {
                replaceValues = delegate().replaceValues((AbstractC4990h0<K, V>) k, (Iterable) iterable);
            }
            return replaceValues;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedMap.class */
    public static class SynchronizedMap<K, V> extends SynchronizedObject implements Map<K, V> {
        public static final long serialVersionUID = 0;
        public transient Set<Map.Entry<K, V>> entrySet;
        public transient Set<K> keySet;
        public transient Collection<V> values;

        public SynchronizedMap(Map<K, V> map, Object obj) {
            super(map, obj);
        }

        @Override // java.util.Map
        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.mutex) {
                containsKey = delegate().containsKey(obj);
            }
            return containsKey;
        }

        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.mutex) {
                containsValue = delegate().containsValue(obj);
            }
            return containsValue;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedObject
        public Map<K, V> delegate() {
            return (Map) super.delegate();
        }

        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = Synchronized.m8034b((Set) delegate().entrySet(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        public V get(Object obj) {
            V v;
            synchronized (this.mutex) {
                v = delegate().get(obj);
            }
            return v;
        }

        @Override // java.util.Map
        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.mutex) {
                isEmpty = delegate().isEmpty();
            }
            return isEmpty;
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.mutex) {
                if (this.keySet == null) {
                    this.keySet = Synchronized.m8034b((Set) delegate().keySet(), this.mutex);
                }
                set = this.keySet;
            }
            return set;
        }

        @Override // java.util.Map
        public V put(K k, V v) {
            V put;
            synchronized (this.mutex) {
                put = delegate().put(k, v);
            }
            return put;
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.mutex) {
                delegate().putAll(map);
            }
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            V remove;
            synchronized (this.mutex) {
                remove = delegate().remove(obj);
            }
            return remove;
        }

        @Override // java.util.Map
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.mutex) {
                if (this.values == null) {
                    this.values = Synchronized.m8032c(delegate().values(), this.mutex);
                }
                collection = this.values;
            }
            return collection;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedMultimap.class */
    public static class SynchronizedMultimap<K, V> extends SynchronizedObject implements AbstractC4995i0<K, V> {
        public static final long serialVersionUID = 0;
        public transient Map<K, Collection<V>> asMap;
        public transient Collection<Map.Entry<K, V>> entries;
        public transient Set<K> keySet;
        public transient AbstractC4997j0<K> keys;
        public transient Collection<V> valuesCollection;

        public SynchronizedMultimap(AbstractC4995i0<K, V> i0Var, Object obj) {
            super(i0Var, obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map;
            synchronized (this.mutex) {
                if (this.asMap == null) {
                    this.asMap = new SynchronizedAsMap(delegate().asMap(), this.mutex);
                }
                map = this.asMap;
            }
            return map;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean containsEntry(Object obj, Object obj2) {
            boolean containsEntry;
            synchronized (this.mutex) {
                containsEntry = delegate().containsEntry(obj, obj2);
            }
            return containsEntry;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.mutex) {
                containsKey = delegate().containsKey(obj);
            }
            return containsKey;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.mutex) {
                containsValue = delegate().containsValue(obj);
            }
            return containsValue;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedObject
        public AbstractC4995i0<K, V> delegate() {
            return (AbstractC4995i0) super.delegate();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection;
            synchronized (this.mutex) {
                if (this.entries == null) {
                    this.entries = Synchronized.m8030d(delegate().entries(), this.mutex);
                }
                collection = this.entries;
            }
            return collection;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        public Collection<V> get(K k) {
            Collection<V> d;
            synchronized (this.mutex) {
                d = Synchronized.m8030d(delegate().get(k), this.mutex);
            }
            return d;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.mutex) {
                isEmpty = delegate().isEmpty();
            }
            return isEmpty;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.mutex) {
                if (this.keySet == null) {
                    this.keySet = Synchronized.m8031c((Set) delegate().keySet(), this.mutex);
                }
                set = this.keySet;
            }
            return set;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public AbstractC4997j0<K> keys() {
            AbstractC4997j0<K> j0Var;
            synchronized (this.mutex) {
                if (this.keys == null) {
                    this.keys = Synchronized.m8047a((AbstractC4997j0) delegate().keys(), this.mutex);
                }
                j0Var = this.keys;
            }
            return j0Var;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean put(K k, V v) {
            boolean put;
            synchronized (this.mutex) {
                put = delegate().put(k, v);
            }
            return put;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean putAll(AbstractC4995i0<? extends K, ? extends V> i0Var) {
            boolean putAll;
            synchronized (this.mutex) {
                putAll = delegate().putAll(i0Var);
            }
            return putAll;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            boolean putAll;
            synchronized (this.mutex) {
                putAll = delegate().putAll(k, iterable);
            }
            return putAll;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean remove(Object obj, Object obj2) {
            boolean remove;
            synchronized (this.mutex) {
                remove = delegate().remove(obj, obj2);
            }
            return remove;
        }

        public Collection<V> removeAll(Object obj) {
            Collection<V> removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(obj);
            }
            return removeAll;
        }

        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Collection<V> replaceValues;
            synchronized (this.mutex) {
                replaceValues = delegate().replaceValues(k, iterable);
            }
            return replaceValues;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.mutex) {
                if (this.valuesCollection == null) {
                    this.valuesCollection = Synchronized.m8032c(delegate().values(), this.mutex);
                }
                collection = this.valuesCollection;
            }
            return collection;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedMultiset.class */
    public static class SynchronizedMultiset<E> extends SynchronizedCollection<E> implements AbstractC4997j0<E> {
        public static final long serialVersionUID = 0;
        public transient Set<E> elementSet;
        public transient Set<AbstractC4997j0.AbstractC4998a<E>> entrySet;

        public SynchronizedMultiset(AbstractC4997j0<E> j0Var, Object obj) {
            super(j0Var, obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public int add(E e, int i) {
            int add;
            synchronized (this.mutex) {
                add = delegate().add(e, i);
            }
            return add;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public int count(Object obj) {
            int count;
            synchronized (this.mutex) {
                count = delegate().count(obj);
            }
            return count;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, com.google.common.collect.Synchronized.SynchronizedObject
        public AbstractC4997j0<E> delegate() {
            return (AbstractC4997j0) super.delegate();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public Set<E> elementSet() {
            Set<E> set;
            synchronized (this.mutex) {
                if (this.elementSet == null) {
                    this.elementSet = Synchronized.m8031c((Set) delegate().elementSet(), this.mutex);
                }
                set = this.elementSet;
            }
            return set;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public Set<AbstractC4997j0.AbstractC4998a<E>> entrySet() {
            Set<AbstractC4997j0.AbstractC4998a<E>> set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = Synchronized.m8031c((Set) delegate().entrySet(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public int remove(Object obj, int i) {
            int remove;
            synchronized (this.mutex) {
                remove = delegate().remove(obj, i);
            }
            return remove;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public int setCount(E e, int i) {
            int count;
            synchronized (this.mutex) {
                count = delegate().setCount(e, i);
            }
            return count;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public boolean setCount(E e, int i, int i2) {
            boolean count;
            synchronized (this.mutex) {
                count = delegate().setCount(e, i, i2);
            }
            return count;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedNavigableMap.class */
    public static class SynchronizedNavigableMap<K, V> extends SynchronizedSortedMap<K, V> implements NavigableMap<K, V> {
        public static final long serialVersionUID = 0;
        public transient NavigableSet<K> descendingKeySet;
        public transient NavigableMap<K, V> descendingMap;
        public transient NavigableSet<K> navigableKeySet;

        public SynchronizedNavigableMap(NavigableMap<K, V> navigableMap, Object obj) {
            super(navigableMap, obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            Map.Entry<K, V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8035b(delegate().ceilingEntry(k), this.mutex);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            K ceilingKey;
            synchronized (this.mutex) {
                ceilingKey = delegate().ceilingKey(k);
            }
            return ceilingKey;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap, com.google.common.collect.Synchronized.SynchronizedMap, com.google.common.collect.Synchronized.SynchronizedObject
        public NavigableMap<K, V> delegate() {
            return (NavigableMap) super.delegate();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            synchronized (this.mutex) {
                if (this.descendingKeySet == null) {
                    NavigableSet<K> a = Synchronized.m8041a((NavigableSet) delegate().descendingKeySet(), this.mutex);
                    this.descendingKeySet = a;
                    return a;
                }
                return this.descendingKeySet;
            }
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            synchronized (this.mutex) {
                if (this.descendingMap == null) {
                    NavigableMap<K, V> a = Synchronized.m8042a((NavigableMap) delegate().descendingMap(), this.mutex);
                    this.descendingMap = a;
                    return a;
                }
                return this.descendingMap;
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            Map.Entry<K, V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8035b(delegate().firstEntry(), this.mutex);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            Map.Entry<K, V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8035b(delegate().floorEntry(k), this.mutex);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            K floorKey;
            synchronized (this.mutex) {
                floorKey = delegate().floorKey(k);
            }
            return floorKey;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            NavigableMap<K, V> a;
            synchronized (this.mutex) {
                a = Synchronized.m8042a((NavigableMap) delegate().headMap(k, z), this.mutex);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            Map.Entry<K, V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8035b(delegate().higherEntry(k), this.mutex);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            K higherKey;
            synchronized (this.mutex) {
                higherKey = delegate().higherKey(k);
            }
            return higherKey;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            Map.Entry<K, V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8035b(delegate().lastEntry(), this.mutex);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            Map.Entry<K, V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8035b(delegate().lowerEntry(k), this.mutex);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            K lowerKey;
            synchronized (this.mutex) {
                lowerKey = delegate().lowerKey(k);
            }
            return lowerKey;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            synchronized (this.mutex) {
                if (this.navigableKeySet == null) {
                    NavigableSet<K> a = Synchronized.m8041a((NavigableSet) delegate().navigableKeySet(), this.mutex);
                    this.navigableKeySet = a;
                    return a;
                }
                return this.navigableKeySet;
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            Map.Entry<K, V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8035b(delegate().pollFirstEntry(), this.mutex);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            Map.Entry<K, V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8035b(delegate().pollLastEntry(), this.mutex);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            NavigableMap<K, V> a;
            synchronized (this.mutex) {
                a = Synchronized.m8042a((NavigableMap) delegate().subMap(k, z, k2, z2), this.mutex);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            NavigableMap<K, V> a;
            synchronized (this.mutex) {
                a = Synchronized.m8042a((NavigableMap) delegate().tailMap(k, z), this.mutex);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedNavigableSet.class */
    public static class SynchronizedNavigableSet<E> extends SynchronizedSortedSet<E> implements NavigableSet<E> {
        public static final long serialVersionUID = 0;
        public transient NavigableSet<E> descendingSet;

        public SynchronizedNavigableSet(NavigableSet<E> navigableSet, Object obj) {
            super(navigableSet, obj);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            E ceiling;
            synchronized (this.mutex) {
                ceiling = delegate().ceiling(e);
            }
            return ceiling;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, com.google.common.collect.Synchronized.SynchronizedSet, com.google.common.collect.Synchronized.SynchronizedCollection, com.google.common.collect.Synchronized.SynchronizedObject
        public NavigableSet<E> delegate() {
            return (NavigableSet) super.delegate();
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return delegate().descendingIterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            synchronized (this.mutex) {
                if (this.descendingSet == null) {
                    NavigableSet<E> a = Synchronized.m8041a((NavigableSet) delegate().descendingSet(), this.mutex);
                    this.descendingSet = a;
                    return a;
                }
                return this.descendingSet;
            }
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            E floor;
            synchronized (this.mutex) {
                floor = delegate().floor(e);
            }
            return floor;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            NavigableSet<E> a;
            synchronized (this.mutex) {
                a = Synchronized.m8041a((NavigableSet) delegate().headSet(e, z), this.mutex);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> headSet(E e) {
            return headSet(e, false);
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            E higher;
            synchronized (this.mutex) {
                higher = delegate().higher(e);
            }
            return higher;
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            E lower;
            synchronized (this.mutex) {
                lower = delegate().lower(e);
            }
            return lower;
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            E pollFirst;
            synchronized (this.mutex) {
                pollFirst = delegate().pollFirst();
            }
            return pollFirst;
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            E pollLast;
            synchronized (this.mutex) {
                pollLast = delegate().pollLast();
            }
            return pollLast;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            NavigableSet<E> a;
            synchronized (this.mutex) {
                a = Synchronized.m8041a((NavigableSet) delegate().subSet(e, z, e2, z2), this.mutex);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> subSet(E e, E e2) {
            return subSet(e, true, e2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            NavigableSet<E> a;
            synchronized (this.mutex) {
                a = Synchronized.m8041a((NavigableSet) delegate().tailSet(e, z), this.mutex);
            }
            return a;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> tailSet(E e) {
            return tailSet(e, true);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedObject.class */
    public static class SynchronizedObject implements Serializable {
        public static final long serialVersionUID = 0;
        public final Object delegate;
        public final Object mutex;

        public SynchronizedObject(Object obj, Object obj2) {
            C4933n.m24795a(obj);
            this.delegate = obj;
            this.mutex = obj2 == null ? this : obj2;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            synchronized (this.mutex) {
                objectOutputStream.defaultWriteObject();
            }
        }

        public Object delegate() {
            return this.delegate;
        }

        public String toString() {
            String obj;
            synchronized (this.mutex) {
                obj = this.delegate.toString();
            }
            return obj;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedQueue.class */
    public static class SynchronizedQueue<E> extends SynchronizedCollection<E> implements Queue<E> {
        public static final long serialVersionUID = 0;

        public SynchronizedQueue(Queue<E> queue, Object obj) {
            super(queue, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, com.google.common.collect.Synchronized.SynchronizedObject
        public Queue<E> delegate() {
            return (Queue) super.delegate();
        }

        @Override // java.util.Queue
        public E element() {
            E element;
            synchronized (this.mutex) {
                element = delegate().element();
            }
            return element;
        }

        @Override // java.util.Queue
        public boolean offer(E e) {
            boolean offer;
            synchronized (this.mutex) {
                offer = delegate().offer(e);
            }
            return offer;
        }

        @Override // java.util.Queue
        public E peek() {
            E peek;
            synchronized (this.mutex) {
                peek = delegate().peek();
            }
            return peek;
        }

        @Override // java.util.Queue
        public E poll() {
            E poll;
            synchronized (this.mutex) {
                poll = delegate().poll();
            }
            return poll;
        }

        @Override // java.util.Queue
        public E remove() {
            E remove;
            synchronized (this.mutex) {
                remove = delegate().remove();
            }
            return remove;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedRandomAccessList.class */
    public static class SynchronizedRandomAccessList<E> extends SynchronizedList<E> implements RandomAccess {
        public static final long serialVersionUID = 0;

        public SynchronizedRandomAccessList(List<E> list, Object obj) {
            super(list, obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedSet.class */
    public static class SynchronizedSet<E> extends SynchronizedCollection<E> implements Set<E> {
        public static final long serialVersionUID = 0;

        public SynchronizedSet(Set<E> set, Object obj) {
            super(set, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, com.google.common.collect.Synchronized.SynchronizedObject
        public Set<E> delegate() {
            return (Set) super.delegate();
        }

        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedSetMultimap.class */
    public static class SynchronizedSetMultimap<K, V> extends SynchronizedMultimap<K, V> implements AbstractC5027t0<K, V> {
        public static final long serialVersionUID = 0;
        public transient Set<Map.Entry<K, V>> entrySet;

        public SynchronizedSetMultimap(AbstractC5027t0<K, V> t0Var, Object obj) {
            super(t0Var, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Synchronized.SynchronizedObject
        public AbstractC5027t0<K, V> delegate() {
            return (AbstractC5027t0) super.delegate();
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<Map.Entry<K, V>> entries() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = Synchronized.m8034b((Set) delegate().entries(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> get(K k) {
            Set<V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8034b((Set) delegate().get((AbstractC5027t0<K, V>) k), this.mutex);
            }
            return b;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> removeAll(Object obj) {
            Set<V> removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(obj);
            }
            return removeAll;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Set<V> replaceValues;
            synchronized (this.mutex) {
                replaceValues = delegate().replaceValues((AbstractC5027t0<K, V>) k, (Iterable) iterable);
            }
            return replaceValues;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedSortedMap.class */
    public static class SynchronizedSortedMap<K, V> extends SynchronizedMap<K, V> implements SortedMap<K, V> {
        public static final long serialVersionUID = 0;

        public SynchronizedSortedMap(SortedMap<K, V> sortedMap, Object obj) {
            super(sortedMap, obj);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator;
            synchronized (this.mutex) {
                comparator = delegate().comparator();
            }
            return comparator;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, com.google.common.collect.Synchronized.SynchronizedObject
        public SortedMap<K, V> delegate() {
            return (SortedMap) super.delegate();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            K firstKey;
            synchronized (this.mutex) {
                firstKey = delegate().firstKey();
            }
            return firstKey;
        }

        public SortedMap<K, V> headMap(K k) {
            SortedMap<K, V> a;
            synchronized (this.mutex) {
                a = Synchronized.m8039a((SortedMap) delegate().headMap(k), this.mutex);
            }
            return a;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            K lastKey;
            synchronized (this.mutex) {
                lastKey = delegate().lastKey();
            }
            return lastKey;
        }

        public SortedMap<K, V> subMap(K k, K k2) {
            SortedMap<K, V> a;
            synchronized (this.mutex) {
                a = Synchronized.m8039a((SortedMap) delegate().subMap(k, k2), this.mutex);
            }
            return a;
        }

        public SortedMap<K, V> tailMap(K k) {
            SortedMap<K, V> a;
            synchronized (this.mutex) {
                a = Synchronized.m8039a((SortedMap) delegate().tailMap(k), this.mutex);
            }
            return a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedSortedSet.class */
    public static class SynchronizedSortedSet<E> extends SynchronizedSet<E> implements SortedSet<E> {
        public static final long serialVersionUID = 0;

        public SynchronizedSortedSet(SortedSet<E> sortedSet, Object obj) {
            super(sortedSet, obj);
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator;
            synchronized (this.mutex) {
                comparator = delegate().comparator();
            }
            return comparator;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSet, com.google.common.collect.Synchronized.SynchronizedCollection, com.google.common.collect.Synchronized.SynchronizedObject
        public SortedSet<E> delegate() {
            return (SortedSet) super.delegate();
        }

        @Override // java.util.SortedSet
        public E first() {
            E first;
            synchronized (this.mutex) {
                first = delegate().first();
            }
            return first;
        }

        public SortedSet<E> headSet(E e) {
            SortedSet<E> b;
            synchronized (this.mutex) {
                b = Synchronized.m8033b((SortedSet) delegate().headSet(e), this.mutex);
            }
            return b;
        }

        @Override // java.util.SortedSet
        public E last() {
            E last;
            synchronized (this.mutex) {
                last = delegate().last();
            }
            return last;
        }

        public SortedSet<E> subSet(E e, E e2) {
            SortedSet<E> b;
            synchronized (this.mutex) {
                b = Synchronized.m8033b((SortedSet) delegate().subSet(e, e2), this.mutex);
            }
            return b;
        }

        public SortedSet<E> tailSet(E e) {
            SortedSet<E> b;
            synchronized (this.mutex) {
                b = Synchronized.m8033b((SortedSet) delegate().tailSet(e), this.mutex);
            }
            return b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedSortedSetMultimap.class */
    public static class SynchronizedSortedSetMultimap<K, V> extends SynchronizedSetMultimap<K, V> implements AbstractC5041z0<K, V> {
        public static final long serialVersionUID = 0;

        public SynchronizedSortedSetMultimap(AbstractC5041z0<K, V> z0Var, Object obj) {
            super(z0Var, obj);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSetMultimap, com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Synchronized.SynchronizedObject
        public AbstractC5041z0<K, V> delegate() {
            return (AbstractC5041z0) super.delegate();
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSetMultimap, com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public SortedSet<V> get(K k) {
            SortedSet<V> b;
            synchronized (this.mutex) {
                b = Synchronized.m8033b((SortedSet) delegate().get((AbstractC5041z0<K, V>) k), this.mutex);
            }
            return b;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSetMultimap, com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public SortedSet<V> removeAll(Object obj) {
            SortedSet<V> removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(obj);
            }
            return removeAll;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSetMultimap, com.google.common.collect.Synchronized.SynchronizedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            SortedSet<V> replaceValues;
            synchronized (this.mutex) {
                replaceValues = delegate().replaceValues((AbstractC5041z0<K, V>) k, (Iterable) iterable);
            }
            return replaceValues;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5041z0
        public Comparator<? super V> valueComparator() {
            Comparator<? super V> valueComparator;
            synchronized (this.mutex) {
                valueComparator = delegate().valueComparator();
            }
            return valueComparator;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedTable.class */
    public static final class SynchronizedTable<R, C, V> extends SynchronizedObject implements AbstractC4958a1<R, C, V> {

        /* renamed from: com.google.common.collect.Synchronized$SynchronizedTable$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedTable$a.class */
        public class C7650a implements AbstractC4920g<Map<C, V>, Map<C, V>> {
            public C7650a() {
            }

            /* renamed from: a */
            public Map<C, V> apply(Map<C, V> map) {
                return Synchronized.m8043a(map, SynchronizedTable.this.mutex);
            }
        }

        /* renamed from: com.google.common.collect.Synchronized$SynchronizedTable$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Synchronized$SynchronizedTable$b.class */
        public class C7651b implements AbstractC4920g<Map<R, V>, Map<R, V>> {
            public C7651b() {
            }

            /* renamed from: a */
            public Map<R, V> apply(Map<R, V> map) {
                return Synchronized.m8043a(map, SynchronizedTable.this.mutex);
            }
        }

        public SynchronizedTable(AbstractC4958a1<R, C, V> a1Var, Object obj) {
            super(a1Var, obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public Set<AbstractC4958a1.AbstractC4959a<R, C, V>> cellSet() {
            Set<AbstractC4958a1.AbstractC4959a<R, C, V>> b;
            synchronized (this.mutex) {
                b = Synchronized.m8034b((Set) delegate().cellSet(), this.mutex);
            }
            return b;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public Map<R, V> column(C c) {
            Map<R, V> a;
            synchronized (this.mutex) {
                a = Synchronized.m8043a(delegate().column(c), this.mutex);
            }
            return a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public Set<C> columnKeySet() {
            Set<C> b;
            synchronized (this.mutex) {
                b = Synchronized.m8034b((Set) delegate().columnKeySet(), this.mutex);
            }
            return b;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public Map<C, Map<R, V>> columnMap() {
            Map<C, Map<R, V>> a;
            synchronized (this.mutex) {
                a = Synchronized.m8043a(Maps.m8142a((Map) delegate().columnMap(), (AbstractC4920g) new C7651b()), this.mutex);
            }
            return a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public boolean contains(Object obj, Object obj2) {
            boolean contains;
            synchronized (this.mutex) {
                contains = delegate().contains(obj, obj2);
            }
            return contains;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public boolean containsColumn(Object obj) {
            boolean containsColumn;
            synchronized (this.mutex) {
                containsColumn = delegate().containsColumn(obj);
            }
            return containsColumn;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public boolean containsRow(Object obj) {
            boolean containsRow;
            synchronized (this.mutex) {
                containsRow = delegate().containsRow(obj);
            }
            return containsRow;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.mutex) {
                containsValue = delegate().containsValue(obj);
            }
            return containsValue;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedObject
        public AbstractC4958a1<R, C, V> delegate() {
            return (AbstractC4958a1) super.delegate();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public boolean equals(Object obj) {
            boolean equals;
            if (this == obj) {
                return true;
            }
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public V get(Object obj, Object obj2) {
            V v;
            synchronized (this.mutex) {
                v = delegate().get(obj, obj2);
            }
            return v;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.mutex) {
                isEmpty = delegate().isEmpty();
            }
            return isEmpty;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public V put(R r, C c, V v) {
            V put;
            synchronized (this.mutex) {
                put = delegate().put(r, c, v);
            }
            return put;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public void putAll(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var) {
            synchronized (this.mutex) {
                delegate().putAll(a1Var);
            }
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public V remove(Object obj, Object obj2) {
            V remove;
            synchronized (this.mutex) {
                remove = delegate().remove(obj, obj2);
            }
            return remove;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public Map<C, V> row(R r) {
            Map<C, V> a;
            synchronized (this.mutex) {
                a = Synchronized.m8043a(delegate().row(r), this.mutex);
            }
            return a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public Set<R> rowKeySet() {
            Set<R> b;
            synchronized (this.mutex) {
                b = Synchronized.m8034b((Set) delegate().rowKeySet(), this.mutex);
            }
            return b;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public Map<R, Map<C, V>> rowMap() {
            Map<R, Map<C, V>> a;
            synchronized (this.mutex) {
                a = Synchronized.m8043a(Maps.m8142a((Map) delegate().rowMap(), (AbstractC4920g) new C7650a()), this.mutex);
            }
            return a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
        public Collection<V> values() {
            Collection<V> c;
            synchronized (this.mutex) {
                c = Synchronized.m8032c(delegate().values(), this.mutex);
            }
            return c;
        }
    }

    /* renamed from: a */
    public static <E> AbstractC4997j0<E> m8047a(AbstractC4997j0<E> j0Var, Object obj) {
        return ((j0Var instanceof SynchronizedMultiset) || (j0Var instanceof ImmutableMultiset)) ? j0Var : new SynchronizedMultiset(j0Var, obj);
    }

    /* renamed from: a */
    public static <K, V> Map<K, V> m8043a(Map<K, V> map, Object obj) {
        return new SynchronizedMap(map, obj);
    }

    /* renamed from: a */
    public static <K, V> NavigableMap<K, V> m8042a(NavigableMap<K, V> navigableMap, Object obj) {
        return new SynchronizedNavigableMap(navigableMap, obj);
    }

    /* renamed from: a */
    public static <E> NavigableSet<E> m8041a(NavigableSet<E> navigableSet, Object obj) {
        return new SynchronizedNavigableSet(navigableSet, obj);
    }

    /* renamed from: a */
    public static <K, V> SortedMap<K, V> m8039a(SortedMap<K, V> sortedMap, Object obj) {
        return new SynchronizedSortedMap(sortedMap, obj);
    }

    /* renamed from: b */
    public static <E> List<E> m8036b(List<E> list, Object obj) {
        return list instanceof RandomAccess ? new SynchronizedRandomAccessList<>(list, obj) : new SynchronizedList<>(list, obj);
    }

    /* renamed from: b */
    public static <K, V> Map.Entry<K, V> m8035b(Map.Entry<K, V> entry, Object obj) {
        if (entry == null) {
            return null;
        }
        return new SynchronizedEntry(entry, obj);
    }

    /* renamed from: b */
    public static <E> Set<E> m8034b(Set<E> set, Object obj) {
        return new SynchronizedSet(set, obj);
    }

    /* renamed from: b */
    public static <E> SortedSet<E> m8033b(SortedSet<E> sortedSet, Object obj) {
        return new SynchronizedSortedSet(sortedSet, obj);
    }

    /* renamed from: c */
    public static <E> Collection<E> m8032c(Collection<E> collection, Object obj) {
        return new SynchronizedCollection(collection, obj);
    }

    /* renamed from: c */
    public static <E> Set<E> m8031c(Set<E> set, Object obj) {
        return set instanceof SortedSet ? m8033b((SortedSet) set, obj) : m8034b((Set) set, obj);
    }

    /* renamed from: d */
    public static <E> Collection<E> m8030d(Collection<E> collection, Object obj) {
        return collection instanceof SortedSet ? m8033b((SortedSet) collection, obj) : collection instanceof Set ? m8034b((Set) collection, obj) : collection instanceof List ? m8036b((List) collection, obj) : m8032c(collection, obj);
    }
}
