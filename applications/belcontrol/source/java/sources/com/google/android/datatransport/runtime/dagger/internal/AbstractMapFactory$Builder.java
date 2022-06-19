package com.google.android.datatransport.runtime.dagger.internal;

import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder.class */
public abstract class AbstractMapFactory$Builder<K, V, V2> {
    public final LinkedHashMap<K, hj1<V>> map;

    public AbstractMapFactory$Builder(int i) {
        this.map = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractMapFactory$Builder<K, V, V2> put(K k, hj1<V> hj1Var) {
        this.map.put(Preconditions.checkNotNull(k, "key"), Preconditions.checkNotNull(hj1Var, "provider"));
        return this;
    }

    public AbstractMapFactory$Builder<K, V, V2> putAll(hj1<Map<K, V2>> hj1Var) {
        if (hj1Var instanceof DelegateFactory) {
            return putAll(((DelegateFactory) hj1Var).getDelegate());
        }
        this.map.putAll(AbstractMapFactory.access$000((AbstractMapFactory) hj1Var));
        return this;
    }
}
