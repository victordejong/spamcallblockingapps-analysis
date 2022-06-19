package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzb.class */
public final class zzb {
    private final int zza = ((Integer) zzbet.zzc().zzc(zzbjl.zzfj)).intValue();
    private final long zzb = ((Long) zzbet.zzc().zzc(zzbjl.zzfk)).longValue();
    private final Map<String, Pair<Long, String>> zzc = Collections.synchronizedMap(new zza(this));

    private final void zze() {
        long mo38787c = zzt.zzj().mo38787c();
        try {
            Iterator<Map.Entry<String, Pair<Long, String>>> it = this.zzc.entrySet().iterator();
            while (it.hasNext() && mo38787c - ((Long) it.next().getValue().first).longValue() > this.zzb) {
                it.remove();
            }
        } catch (ConcurrentModificationException e) {
            zzt.zzg().zzk(e, "QueryJsonMap.removeExpiredEntries");
        }
    }

    public final void zzb(String str, String str2) {
        synchronized (this) {
            this.zzc.put(str, new Pair<>(Long.valueOf(zzt.zzj().mo38787c()), str2));
            zze();
        }
    }

    public final String zzc(String str) {
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

    public final void zzd(String str) {
        synchronized (this) {
            this.zzc.remove(str);
        }
    }
}
