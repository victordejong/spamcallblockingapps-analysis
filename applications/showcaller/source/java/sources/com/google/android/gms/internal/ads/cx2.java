package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cx2.class */
public final class cx2<K, V> extends fx2<K, V> {
    /* renamed from: a */
    public final cx2<K, V> m15979a(K k, V... vArr) {
        List<V> asList = Arrays.asList(vArr);
        Collection<V> collection = this.f23186a.get(k);
        if (collection != null) {
            for (V v : asList) {
                gw2.m14795a(k, v);
                collection.add(v);
            }
        } else {
            Iterator it = asList.iterator();
            if (it.hasNext()) {
                ArrayList arrayList = new ArrayList();
                while (it.hasNext()) {
                    Object next = it.next();
                    gw2.m14795a(k, next);
                    arrayList.add(next);
                }
                this.f23186a.put(k, arrayList);
            }
        }
        return this;
    }

    /* renamed from: b */
    public final zzfol<K, V> m15978b() {
        zzfnz zzfnzVar;
        Set<Map.Entry<K, Collection<V>>> entrySet = this.f23186a.entrySet();
        if (entrySet.isEmpty()) {
            zzfnzVar = zzfnz.f34063i;
        } else {
            dx2 dx2Var = new dx2(entrySet.size());
            int i = 0;
            for (Map.Entry<K, Collection<V>> entry : entrySet) {
                K key = entry.getKey();
                zzfoj zzp = zzfoj.zzp(entry.getValue());
                if (!zzp.isEmpty()) {
                    dx2Var.m15658a(key, zzp);
                    i += zzp.size();
                }
            }
            zzfnzVar = new zzfol<>(dx2Var.m15656c(), i);
        }
        return zzfnzVar;
    }
}
