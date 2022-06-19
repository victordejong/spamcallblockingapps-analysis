package com.yanzhenjie.nohttp.tools;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/BasicMultiValueMap.class */
public class BasicMultiValueMap<K, V> implements MultiValueMap<K, V> {
    private Map<K, List<V>> mSource;

    public BasicMultiValueMap(Map<K, List<V>> map) {
        this.mSource = map;
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public void add(K k, V v) {
        if (!containsKey(k)) {
            this.mSource.put(k, new ArrayList(1));
        }
        getValues(k).add(v);
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public void add(K k, List<V> list) {
        if (!containsKey(k)) {
            this.mSource.put(k, list);
        } else {
            this.mSource.get(k).addAll(list);
        }
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public void clear() {
        this.mSource.clear();
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public boolean containsKey(K k) {
        return this.mSource.containsKey(k);
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public Set<Map.Entry<K, List<V>>> entrySet() {
        return this.mSource.entrySet();
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public V getFirstValue(K k) {
        return getValue(k, 0);
    }

    public Map<K, List<V>> getSource() {
        return this.mSource;
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public V getValue(K k, int i) {
        List<V> values = getValues(k);
        if (values == null || values.size() <= i) {
            return null;
        }
        return values.get(i);
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public List<V> getValues(K k) {
        return this.mSource.get(k);
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public boolean isEmpty() {
        return this.mSource.isEmpty();
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public Set<K> keySet() {
        return this.mSource.keySet();
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public List<V> remove(K k) {
        return this.mSource.remove(k);
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public void set(K k, V v) {
        remove(k);
        add((BasicMultiValueMap<K, V>) k, (K) v);
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public void set(K k, List<V> list) {
        this.mSource.put(k, list);
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public int size() {
        return this.mSource.size();
    }

    @Override // com.yanzhenjie.nohttp.tools.MultiValueMap
    public List<V> values() {
        ArrayList arrayList = new ArrayList();
        for (K k : keySet()) {
            arrayList.addAll(getValues(k));
        }
        return arrayList;
    }
}
