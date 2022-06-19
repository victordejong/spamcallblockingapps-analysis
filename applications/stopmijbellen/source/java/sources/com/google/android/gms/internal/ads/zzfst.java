package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfst.class */
public final class zzfst<K, V> extends zzfsy<K, V> {
    public final zzfst<K, V> zza(K k, V... vArr) {
        List<V> asList = Arrays.asList(vArr);
        Collection<V> collection = this.zza.get(k);
        if (collection != null) {
            for (V v : asList) {
                zzfrr.zzb(k, v);
                collection.add(v);
            }
        } else {
            Iterator it2 = asList.iterator();
            if (it2.hasNext()) {
                ArrayList arrayList = new ArrayList();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    zzfrr.zzb(k, next);
                    arrayList.add(next);
                }
                this.zza.put(k, arrayList);
            }
        }
        return this;
    }

    public final zzfsu<K, V> zzb() {
        zzfsi zzfsiVar;
        Set<Map.Entry<K, Collection<V>>> entrySet = this.zza.entrySet();
        if (entrySet.isEmpty()) {
            zzfsiVar = zzfsi.zza;
        } else {
            zzfsv zzfsvVar = new zzfsv(entrySet.size());
            int i = 0;
            for (Map.Entry<K, Collection<V>> entry : entrySet) {
                K key = entry.getKey();
                zzfss zzm = zzfss.zzm(entry.getValue());
                if (!zzm.isEmpty()) {
                    zzfsvVar.zza(key, zzm);
                    i += zzm.size();
                }
            }
            zzfsiVar = new zzfsu<>(zzfsvVar.zzc(), i);
        }
        return zzfsiVar;
    }
}
