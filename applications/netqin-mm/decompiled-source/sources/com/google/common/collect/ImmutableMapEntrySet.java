package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMapEntrySet.class */
public abstract class ImmutableMapEntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm.class */
    public static class EntrySetSerializedForm<K, V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final ImmutableMap<K, V> map;

        public EntrySetSerializedForm(ImmutableMap<K, V> immutableMap) {
            this.map = immutableMap;
        }

        public Object readResolve() {
            return this.map.entrySet();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet.class */
    public static final class RegularEntrySet<K, V> extends ImmutableMapEntrySet<K, V> {
        public final transient ImmutableList<Map.Entry<K, V>> entries;
        public final transient ImmutableMap<K, V> map;

        public RegularEntrySet(ImmutableMap<K, V> immutableMap, ImmutableList<Map.Entry<K, V>> immutableList) {
            this.map = immutableMap;
            this.entries = immutableList;
        }

        public RegularEntrySet(ImmutableMap<K, V> immutableMap, Map.Entry<K, V>[] entryArr) {
            this(immutableMap, ImmutableList.asImmutableList(entryArr));
        }

        @Override // com.google.common.collect.ImmutableCollection
        public int copyIntoArray(Object[] objArr, int i) {
            return this.entries.copyIntoArray(objArr, i);
        }

        @Override // com.google.common.collect.ImmutableSet
        public ImmutableList<Map.Entry<K, V>> createAsList() {
            return this.entries;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public AbstractC4978e1<Map.Entry<K, V>> iterator() {
            return this.entries.iterator();
        }

        @Override // com.google.common.collect.ImmutableMapEntrySet
        public ImmutableMap<K, V> map() {
            return this.map;
        }
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        boolean z = false;
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            V v = map().get(entry.getKey());
            z = false;
            if (v != null) {
                z = false;
                if (v.equals(entry.getValue())) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return map().hashCode();
    }

    @Override // com.google.common.collect.ImmutableSet
    public boolean isHashCodeFast() {
        return map().isHashCodeFast();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return map().isPartialView();
    }

    public abstract ImmutableMap<K, V> map();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return map().size();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new EntrySetSerializedForm(map());
    }
}
