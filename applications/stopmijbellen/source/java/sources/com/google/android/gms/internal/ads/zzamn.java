package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamn.class */
public final class zzamn extends zzakd<Integer, Long> {
    public Long zza;
    public Long zzb;

    public zzamn() {
    }

    public zzamn(String str) {
        HashMap zza = zzakd.zza(str);
        if (zza != null) {
            this.zza = (Long) zza.get(0);
            this.zzb = (Long) zza.get(1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final HashMap<Integer, Long> zzb() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        return hashMap;
    }
}
