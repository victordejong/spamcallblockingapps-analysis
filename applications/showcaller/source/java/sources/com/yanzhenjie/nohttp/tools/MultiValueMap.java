package com.yanzhenjie.nohttp.tools;

import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/MultiValueMap.class */
public interface MultiValueMap<K, V> {
    void add(K k, V v);

    void add(K k, List<V> list);

    void clear();

    boolean containsKey(K k);

    Set<Map.Entry<K, List<V>>> entrySet();

    V getFirstValue(K k);

    V getValue(K k, int i);

    List<V> getValues(K k);

    boolean isEmpty();

    Set<K> keySet();

    List<V> remove(K k);

    void set(K k, V v);

    void set(K k, List<V> list);

    int size();

    List<V> values();
}
