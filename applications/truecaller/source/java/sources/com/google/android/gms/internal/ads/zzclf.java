package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclf.class */
public final class zzclf {
    private final ArrayList<zzaud> zza = new ArrayList<>();
    private long zzb;

    public final long zza() {
        Iterator<zzaud> it = this.zza.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> zze = it.next().zze();
            if (zze != null) {
                for (Map.Entry<String, List<String>> entry : zze.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.zzb = Math.max(this.zzb, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it.remove();
            }
        }
        return this.zzb;
    }

    public final void zzb(zzaud zzaudVar) {
        this.zza.add(zzaudVar);
    }
}
