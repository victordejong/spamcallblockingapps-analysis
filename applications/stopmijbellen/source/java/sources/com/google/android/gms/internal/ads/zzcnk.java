package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnk.class */
final class zzcnk {
    private final ArrayList<zzawa> zza = new ArrayList<>();
    private long zzb;

    public final long zza() {
        Iterator<zzawa> it2 = this.zza.iterator();
        while (it2.hasNext()) {
            Map<String, List<String>> zze = it2.next().zze();
            if (zze != null) {
                for (Map.Entry<String, List<String>> entry : zze.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.zzb = Math.max(this.zzb, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it2.remove();
            }
        }
        return this.zzb;
    }

    public final void zzb(zzawa zzawaVar) {
        this.zza.add(zzawaVar);
    }
}
