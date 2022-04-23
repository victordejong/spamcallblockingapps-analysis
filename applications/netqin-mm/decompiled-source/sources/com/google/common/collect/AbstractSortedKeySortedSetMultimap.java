package com.google.common.collect;

import java.util.Collection;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractSortedKeySortedSetMultimap.class */
public abstract class AbstractSortedKeySortedSetMultimap<K, V> extends AbstractSortedSetMultimap<K, V> {
    public AbstractSortedKeySortedSetMultimap(SortedMap<K, Collection<V>> sortedMap) {
        super(sortedMap);
    }

    @Override // com.google.common.collect.AbstractSortedSetMultimap, com.google.common.collect.AbstractSetMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public SortedMap<K, Collection<V>> asMap() {
        return (SortedMap) super.asMap();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public SortedMap<K, Collection<V>> backingMap() {
        return (SortedMap) super.backingMap();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
    public Set<K> createKeySet() {
        return createMaybeNavigableKeySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public SortedSet<K> keySet() {
        return (SortedSet) super.keySet();
    }
}
