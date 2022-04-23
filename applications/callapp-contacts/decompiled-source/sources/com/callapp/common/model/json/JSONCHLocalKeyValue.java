package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalKeyValue.class */
public class JSONCHLocalKeyValue<K, V> implements Serializable {
    private static final long serialVersionUID = 6245176900427958689L;
    private K key;
    private V value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalKeyValue jSONCHLocalKeyValue = (JSONCHLocalKeyValue) obj;
        K k = this.key;
        if (k != null) {
            if (!k.equals(jSONCHLocalKeyValue.key)) {
                return false;
            }
        } else if (jSONCHLocalKeyValue.key != null) {
            return false;
        }
        V v = this.value;
        V v2 = jSONCHLocalKeyValue.value;
        return v != null ? v.equals(v2) : v2 == null;
    }

    public K getKey() {
        return this.key;
    }

    public V getValue() {
        return this.value;
    }

    public int hashCode() {
        K k = this.key;
        int i = 0;
        int hashCode = k != null ? k.hashCode() : 0;
        V v = this.value;
        if (v != null) {
            i = v.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setKey(K k) {
        this.key = k;
    }

    public void setValue(V v) {
        this.value = v;
    }
}
