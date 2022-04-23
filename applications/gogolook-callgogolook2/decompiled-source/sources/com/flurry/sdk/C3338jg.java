package com.flurry.sdk;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.flurry.sdk.jg */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jg.class */
public final class C3338jg<K, V> {

    /* renamed from: a */
    public final Map<K, List<V>> f5707a;

    /* renamed from: b */
    public int f5708b;

    public C3338jg() {
        this.f5707a = new HashMap();
    }

    public C3338jg(Map<K, List<V>> map) {
        this.f5707a = map;
    }

    /* renamed from: a */
    public final List<V> m32655a(K k) {
        if (k == null) {
            return Collections.emptyList();
        }
        List<V> a = m32653a((C3338jg<K, V>) k, false);
        List<V> list = a;
        if (a == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    /* renamed from: a */
    public final List<V> m32653a(K k, boolean z) {
        List<V> list = this.f5707a.get(k);
        List<V> list2 = list;
        if (z) {
            list2 = list;
            if (list == null) {
                int i = this.f5708b;
                list2 = i > 0 ? new ArrayList<>(i) : new ArrayList<>();
                this.f5707a.put(k, list2);
            }
        }
        return list2;
    }

    /* renamed from: a */
    public final void m32657a() {
        this.f5707a.clear();
    }

    /* renamed from: a */
    public final void m32656a(C3338jg<K, V> jgVar) {
        if (jgVar != null) {
            for (Map.Entry<K, List<V>> entry : jgVar.f5707a.entrySet()) {
                m32653a((C3338jg<K, V>) entry.getKey(), true).addAll(entry.getValue());
            }
        }
    }

    /* renamed from: a */
    public final void m32654a(K k, V v) {
        if (k != null) {
            m32653a((C3338jg<K, V>) k, true).add(v);
        }
    }

    /* renamed from: b */
    public final Collection<Map.Entry<K, V>> m32652b() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, List<V>> entry : this.f5707a.entrySet()) {
            for (V v : entry.getValue()) {
                arrayList.add(new AbstractMap.SimpleImmutableEntry(entry.getKey(), v));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final boolean m32651b(K k) {
        return (k == null || this.f5707a.remove(k) == null) ? false : true;
    }

    /* renamed from: b */
    public final boolean m32650b(K k, V v) {
        List<V> a;
        if (k == null || (a = m32653a((C3338jg<K, V>) k, false)) == null) {
            return false;
        }
        boolean remove = a.remove(v);
        if (a.size() == 0) {
            this.f5707a.remove(k);
        }
        return remove;
    }

    /* renamed from: c */
    public final Set<K> m32649c() {
        return this.f5707a.keySet();
    }

    /* renamed from: d */
    public final Collection<V> m32648d() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, List<V>> entry : this.f5707a.entrySet()) {
            arrayList.addAll(entry.getValue());
        }
        return arrayList;
    }

    /* renamed from: e */
    public final int m32647e() {
        int i = 0;
        for (Map.Entry<K, List<V>> entry : this.f5707a.entrySet()) {
            i += entry.getValue().size();
        }
        return i;
    }
}
