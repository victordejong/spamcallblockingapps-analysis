package com.google.common.base;

import java.io.Serializable;
import java.util.Map;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Functions$FunctionForMapNoDefault.class */
public class Functions$FunctionForMapNoDefault<K, V> implements AbstractC4920g<K, V>, Serializable {
    public static final long serialVersionUID = 0;
    public final Map<K, V> map;

    public Functions$FunctionForMapNoDefault(Map<K, V> map) {
        C4933n.m24795a(map);
        this.map = map;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public V apply(K k) {
        V v = this.map.get(k);
        C4933n.m24782a(v != null || this.map.containsKey(k), "Key '%s' not present in map", k);
        return v;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public boolean equals(Object obj) {
        if (obj instanceof Functions$FunctionForMapNoDefault) {
            return this.map.equals(((Functions$FunctionForMapNoDefault) obj).map);
        }
        return false;
    }

    public int hashCode() {
        return this.map.hashCode();
    }

    public String toString() {
        return "Functions.forMap(" + this.map + ")";
    }
}
