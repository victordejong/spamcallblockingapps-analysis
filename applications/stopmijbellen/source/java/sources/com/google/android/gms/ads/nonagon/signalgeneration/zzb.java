package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzb.class */
public final class zzb {
    private final int zza = ((Integer) zzbgq.zzc().zzb(zzblj.zzfq)).intValue();
    private final long zzb = ((Long) zzbgq.zzc().zzb(zzblj.zzfr)).longValue();
    private final Map<String, Pair<Long, String>> zzc = Collections.synchronizedMap(new zza(this));

    private final void zze() {
        long currentTimeMillis = zzt.zzA().currentTimeMillis();
        try {
            Iterator<Map.Entry<String, Pair<Long, String>>> it2 = this.zzc.entrySet().iterator();
            while (it2.hasNext() && currentTimeMillis - ((Long) it2.next().getValue().first).longValue() > this.zzb) {
                it2.remove();
            }
        } catch (ConcurrentModificationException e) {
            zzt.zzo().zzs(e, "QueryJsonMap.removeExpiredEntries");
        }
    }

    public final String zzb(String str) {
        synchronized (this) {
            Pair<Long, String> pair = this.zzc.get(str);
            if (pair != null) {
                String str2 = (String) pair.second;
                this.zzc.remove(str);
                return str2;
            }
            return null;
        }
    }

    public final void zzc(String str, String str2) {
        synchronized (this) {
            this.zzc.put(str, new Pair<>(Long.valueOf(zzt.zzA().currentTimeMillis()), str2));
            zze();
        }
    }

    public final void zzd(String str) {
        synchronized (this) {
            this.zzc.remove(str);
        }
    }
}
