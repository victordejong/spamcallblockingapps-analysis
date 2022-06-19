package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffh.class */
public final class zzffh {
    private final Clock zza;
    private final Map<String, List<String>> zzb = new HashMap();
    private final Map<String, Long> zzc = new HashMap();

    public zzffh(Clock clock) {
        this.zza = clock;
    }

    private final void zzd(String str, String str2) {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, new ArrayList());
        }
        this.zzb.get(str).add(str2);
    }

    public final void zza(String str) {
        if (!this.zzc.containsKey(str)) {
            this.zzc.put(str, Long.valueOf(this.zza.mo38789a()));
            return;
        }
        long mo38789a = this.zza.mo38789a();
        long longValue = this.zzc.remove(str).longValue();
        StringBuilder sb = new StringBuilder(20);
        sb.append(mo38789a - longValue);
        zzd(str, sb.toString());
    }

    public final void zzb(String str, String str2) {
        if (!this.zzc.containsKey(str)) {
            this.zzc.put(str, Long.valueOf(this.zza.mo38789a()));
            return;
        }
        long mo38789a = this.zza.mo38789a();
        long longValue = this.zzc.remove(str).longValue();
        StringBuilder sb = new StringBuilder(str2.length() + 20);
        sb.append(str2);
        sb.append(mo38789a - longValue);
        zzd(str, sb.toString());
    }

    public final List<zzffg> zzc() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.zzb.entrySet()) {
            int i = 0;
            if (entry.getValue().size() > 1) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    i++;
                    arrayList.add(new zzffg(C22128a.m8614i(new StringBuilder(String.valueOf(key).length() + 12), key, StringConstant.DOT, i), str));
                }
            } else {
                arrayList.add(new zzffg(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return arrayList;
    }
}
