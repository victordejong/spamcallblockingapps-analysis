package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfiu.class */
final class zzfiu {
    private final Clock zza;
    private final Map<String, List<String>> zzb = new HashMap();
    private final Map<String, Long> zzc = new HashMap();

    public zzfiu(Clock clock) {
        this.zza = clock;
    }

    private final void zzd(String str, String str2) {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, new ArrayList());
        }
        this.zzb.get(str).add(str2);
    }

    public final List<zzfit> zza() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.zzb.entrySet()) {
            int i = 0;
            if (entry.getValue().size() > 1) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    i++;
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 12);
                    sb.append(key);
                    sb.append(".");
                    sb.append(i);
                    arrayList.add(new zzfit(sb.toString(), str));
                }
            } else {
                arrayList.add(new zzfit(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return arrayList;
    }

    public final void zzb(String str) {
        if (!this.zzc.containsKey(str)) {
            this.zzc.put(str, Long.valueOf(this.zza.elapsedRealtime()));
            return;
        }
        long elapsedRealtime = this.zza.elapsedRealtime();
        long longValue = this.zzc.remove(str).longValue();
        StringBuilder sb = new StringBuilder(20);
        sb.append(elapsedRealtime - longValue);
        zzd(str, sb.toString());
    }

    public final void zzc(String str, String str2) {
        if (!this.zzc.containsKey(str)) {
            this.zzc.put(str, Long.valueOf(this.zza.elapsedRealtime()));
            return;
        }
        long elapsedRealtime = this.zza.elapsedRealtime();
        long longValue = this.zzc.remove(str).longValue();
        StringBuilder sb = new StringBuilder(str2.length() + 20);
        sb.append(str2);
        sb.append(elapsedRealtime - longValue);
        zzd(str, sb.toString());
    }
}
