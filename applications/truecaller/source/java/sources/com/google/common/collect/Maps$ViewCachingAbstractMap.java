package com.google.common.collect;

import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/Maps$ViewCachingAbstractMap.class */
public abstract class Maps$ViewCachingAbstractMap<K, V> extends AbstractMap<K, V> {
    public transient Set<Map.Entry<K, V>> entrySet;
    public transient Collection<V> values;

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = new Multimaps.AsMap.EntrySet<>((Multimaps.AsMap) this);
            this.entrySet = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        AbstractCollection<V> abstractCollection = collection;
        if (collection == null) {
            abstractCollection = new AbstractCollection<V>(this) { // from class: com.google.common.collect.Maps$Values
                public final Map<K, V> map;

                {
                    this.map = this;
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public void clear() {
                    this.map.clear();
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public boolean contains(Object obj) {
                    return this.map.containsValue(obj);
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public boolean isEmpty() {
                    return this.map.isEmpty();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
                public Iterator<V> iterator() {
                    return new Maps.2(this.map.entrySet().iterator());
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public boolean remove(Object obj) {
                    try {
                        return super.remove(obj);
                    } catch (UnsupportedOperationException e) {
                        for (Map.Entry<K, V> entry : this.map.entrySet()) {
                            if (C26232y.equal1(obj, entry.getValue())) {
                                this.map.remove(entry.getKey());
                                return true;
                            }
                        }
                        return false;
                    }
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public boolean removeAll(Collection<?> collection2) {
                    try {
                        Objects.requireNonNull(collection2);
                        return super.removeAll(collection2);
                    } catch (UnsupportedOperationException e) {
                        HashSet hashSet = new HashSet();
                        for (Map.Entry<K, V> entry : this.map.entrySet()) {
                            if (collection2.contains(entry.getValue())) {
                                hashSet.add(entry.getKey());
                            }
                        }
                        return this.map.keySet().removeAll(hashSet);
                    }
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public boolean retainAll(Collection<?> collection2) {
                    try {
                        Objects.requireNonNull(collection2);
                        return super.retainAll(collection2);
                    } catch (UnsupportedOperationException e) {
                        HashSet hashSet = new HashSet();
                        for (Map.Entry<K, V> entry : this.map.entrySet()) {
                            if (collection2.contains(entry.getValue())) {
                                hashSet.add(entry.getKey());
                            }
                        }
                        return this.map.keySet().retainAll(hashSet);
                    }
                }

                @Override // java.util.AbstractCollection, java.util.Collection
                public int size() {
                    return this.map.size();
                }
            };
            this.values = abstractCollection;
        }
        return abstractCollection;
    }
}
