package com.flurry.sdk;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.flurry.sdk.kl */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kl.class */
public final class C0467kl<K, V> {

    /* renamed from: a */
    public final Map<K, List<V>> f3482a;

    /* renamed from: b */
    private int f3483b;

    public C0467kl() {
        this.f3482a = new HashMap();
    }

    public C0467kl(Map<K, List<V>> map) {
        this.f3482a = map;
    }

    /* renamed from: a */
    public final List<V> m4634a(K k) {
        if (k == null) {
            return Collections.emptyList();
        }
        List<V> m4632a = m4632a((C0467kl<K, V>) k, false);
        List<V> list = m4632a;
        if (m4632a == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    /* renamed from: a */
    public final List<V> m4632a(K k, boolean z) {
        List<V> list = this.f3482a.get(k);
        ArrayList arrayList = list;
        if (z) {
            arrayList = list;
            if (list == null) {
                arrayList = this.f3483b > 0 ? new ArrayList(this.f3483b) : new ArrayList();
                this.f3482a.put(k, arrayList);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m4636a() {
        this.f3482a.clear();
    }

    /* renamed from: a */
    public final void m4635a(C0467kl<K, V> c0467kl) {
        if (c0467kl == null) {
            return;
        }
        for (Map.Entry<K, List<V>> entry : c0467kl.f3482a.entrySet()) {
            m4632a((C0467kl<K, V>) entry.getKey(), true).addAll(entry.getValue());
        }
    }

    /* renamed from: a */
    public final void m4633a(K k, V v) {
        if (k == null) {
            return;
        }
        m4632a((C0467kl<K, V>) k, true).add(v);
    }

    /* renamed from: b */
    public final Collection<Map.Entry<K, V>> m4631b() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, List<V>> entry : this.f3482a.entrySet()) {
            for (V v : entry.getValue()) {
                arrayList.add(new AbstractMap.SimpleImmutableEntry(entry.getKey(), v));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final boolean m4630b(K k) {
        return (k == null || this.f3482a.remove(k) == null) ? false : true;
    }

    /* renamed from: b */
    public final boolean m4629b(K k, V v) {
        List<V> m4632a;
        if (k == null || (m4632a = m4632a((C0467kl<K, V>) k, false)) == null) {
            return false;
        }
        boolean remove = m4632a.remove(v);
        if (m4632a.size() == 0) {
            this.f3482a.remove(k);
        }
        return remove;
    }

    /* renamed from: c */
    public final Set<K> m4628c() {
        return this.f3482a.keySet();
    }

    /* renamed from: d */
    public final Collection<V> m4627d() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, List<V>> entry : this.f3482a.entrySet()) {
            arrayList.addAll(entry.getValue());
        }
        return arrayList;
    }

    /* renamed from: e */
    public final int m4626e() {
        Iterator<Map.Entry<K, List<V>>> it = this.f3482a.entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = i2 + it.next().getValue().size();
            } else {
                return i2;
            }
        }
    }
}
