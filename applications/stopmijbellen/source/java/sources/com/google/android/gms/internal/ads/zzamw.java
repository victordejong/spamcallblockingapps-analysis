package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamw.class */
public final class zzamw extends zzakd<Integer, Long> {
    public Long zza;
    public Long zzb;
    public Long zzc;
    public Long zzd;

    public zzamw() {
    }

    public zzamw(String str) {
        HashMap zza = zzakd.zza(str);
        if (zza != null) {
            this.zza = (Long) zza.get(0);
            this.zzb = (Long) zza.get(1);
            this.zzc = (Long) zza.get(2);
            this.zzd = (Long) zza.get(3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final HashMap<Integer, Long> zzb() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        hashMap.put(3, this.zzd);
        return hashMap;
    }
}
