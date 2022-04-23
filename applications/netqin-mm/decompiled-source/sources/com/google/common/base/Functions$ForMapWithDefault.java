package com.google.common.base;

import java.io.Serializable;
import java.util.Map;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Functions$ForMapWithDefault.class */
public class Functions$ForMapWithDefault<K, V> implements AbstractC4920g<K, V>, Serializable {
    public static final long serialVersionUID = 0;
    public final V defaultValue;
    public final Map<K, ? extends V> map;

    public Functions$ForMapWithDefault(Map<K, ? extends V> map, V v) {
        C4933n.m24795a(map);
        this.map = map;
        this.defaultValue = v;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public V apply(K k) {
        Object obj = this.map.get(k);
        V v = (V) obj;
        if (obj == null) {
            v = this.map.containsKey(k) ? (V) obj : this.defaultValue;
        }
        return v;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof Functions$ForMapWithDefault) {
            Functions$ForMapWithDefault functions$ForMapWithDefault = (Functions$ForMapWithDefault) obj;
            z = false;
            if (this.map.equals(functions$ForMapWithDefault.map)) {
                z = false;
                if (C4928k.m24808a(this.defaultValue, functions$ForMapWithDefault.defaultValue)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(this.map, this.defaultValue);
    }

    public String toString() {
        return "Functions.forMap(" + this.map + ", defaultValue=" + this.defaultValue + ")";
    }
}
