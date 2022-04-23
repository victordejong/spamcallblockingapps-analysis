package com.google.common.collect;

import java.io.Serializable;
import p131c.p161d.p266c.p269c.AbstractC4960b;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableEntry.class */
public class ImmutableEntry<K, V> extends AbstractC4960b<K, V> implements Serializable {
    public static final long serialVersionUID = 0;
    public final K key;
    public final V value;

    public ImmutableEntry(K k, V v) {
        this.key = k;
        this.value = v;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
    public final K getKey() {
        return this.key;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
