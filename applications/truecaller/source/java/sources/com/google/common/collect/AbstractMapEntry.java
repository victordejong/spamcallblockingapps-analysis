package com.google.common.collect;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/AbstractMapEntry.class */
public abstract class AbstractMapEntry<K, V> implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            z = false;
            if (C26232y.equal1(getKey(), entry.getKey())) {
                z = false;
                if (C26232y.equal1(getValue(), entry.getValue())) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.util.Map.Entry
    public abstract K getKey();

    @Override // java.util.Map.Entry
    public abstract V getValue();

    @Override // java.util.Map.Entry
    public int hashCode() {
        K key = getKey();
        V value = getValue();
        int i = 0;
        int hashCode = key == null ? 0 : key.hashCode();
        if (value != null) {
            i = value.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        String valueOf = String.valueOf(getKey());
        String valueOf2 = String.valueOf(getValue());
        return C22128a.m8671R1(valueOf2.length() + valueOf.length() + 1, valueOf, ContainerUtils.KEY_VALUE_DELIMITER, valueOf2);
    }
}
