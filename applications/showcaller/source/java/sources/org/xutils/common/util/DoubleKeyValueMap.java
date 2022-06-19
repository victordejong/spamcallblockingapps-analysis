package org.xutils.common.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/DoubleKeyValueMap.class */
public class DoubleKeyValueMap<K1, K2, V> {

    /* renamed from: a */
    private final ConcurrentHashMap<K1, ConcurrentHashMap<K2, V>> f40606a = new ConcurrentHashMap<>();

    public void clear() {
        if (this.f40606a.size() > 0) {
            for (ConcurrentHashMap<K2, V> concurrentHashMap : this.f40606a.values()) {
                concurrentHashMap.clear();
            }
            this.f40606a.clear();
        }
    }

    public boolean containsKey(K1 k1) {
        return this.f40606a.containsKey(k1);
    }

    public boolean containsKey(K1 k1, K2 k2) {
        ConcurrentHashMap<K2, V> concurrentHashMap;
        if (!this.f40606a.containsKey(k1) || (concurrentHashMap = this.f40606a.get(k1)) == null) {
            return false;
        }
        return concurrentHashMap.containsKey(k2);
    }

    public V get(K1 k1, K2 k2) {
        ConcurrentHashMap<K2, V> concurrentHashMap = this.f40606a.get(k1);
        return concurrentHashMap == null ? null : concurrentHashMap.get(k2);
    }

    public ConcurrentHashMap<K2, V> get(K1 k1) {
        return this.f40606a.get(k1);
    }

    public Collection<V> getAllValues() {
        ArrayList arrayList;
        Collection<? extends V> values;
        Set<K1> keySet = this.f40606a.keySet();
        if (keySet != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<K1> it = keySet.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                ConcurrentHashMap<K2, V> concurrentHashMap = this.f40606a.get(it.next());
                if (concurrentHashMap != null && (values = concurrentHashMap.values()) != null) {
                    arrayList2.addAll(values);
                }
            }
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    public Collection<V> getAllValues(K1 k1) {
        ConcurrentHashMap<K2, V> concurrentHashMap = this.f40606a.get(k1);
        return concurrentHashMap == null ? null : concurrentHashMap.values();
    }

    public Set<K1> getFirstKeys() {
        return this.f40606a.keySet();
    }

    public void put(K1 k1, K2 k2, V v) {
        if (k1 == null || k2 == null || v == null) {
            return;
        }
        if (!this.f40606a.containsKey(k1)) {
            ConcurrentHashMap<K2, V> concurrentHashMap = new ConcurrentHashMap<>();
            concurrentHashMap.put(k2, v);
            this.f40606a.put(k1, concurrentHashMap);
            return;
        }
        ConcurrentHashMap<K2, V> concurrentHashMap2 = this.f40606a.get(k1);
        if (concurrentHashMap2 != null) {
            concurrentHashMap2.put(k2, v);
            return;
        }
        ConcurrentHashMap<K2, V> concurrentHashMap3 = new ConcurrentHashMap<>();
        concurrentHashMap3.put(k2, v);
        this.f40606a.put(k1, concurrentHashMap3);
    }

    public void remove(K1 k1) {
        this.f40606a.remove(k1);
    }

    public void remove(K1 k1, K2 k2) {
        ConcurrentHashMap<K2, V> concurrentHashMap = this.f40606a.get(k1);
        if (concurrentHashMap != null) {
            concurrentHashMap.remove(k2);
        }
        if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
            this.f40606a.remove(k1);
        }
    }

    public int size() {
        int i = 0;
        if (this.f40606a.size() == 0) {
            return 0;
        }
        for (ConcurrentHashMap<K2, V> concurrentHashMap : this.f40606a.values()) {
            i += concurrentHashMap.size();
        }
        return i;
    }
}
