package com.google.common.collect;

import java.util.Map;
/* renamed from: com.google.common.collect.b */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/b.class */
abstract class AbstractC8803b<K, V> implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public abstract K getKey();

    @Override // java.util.Map.Entry
    public abstract V getValue();

    public String toString() {
        return getKey() + "=" + getValue();
    }
}
