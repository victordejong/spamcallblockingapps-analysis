package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabv.class */
public final class zzabv extends zzzn<Integer, Long> {
    public Long zza;
    public Long zzb;
    public Long zzc;
    public Long zzd;

    public zzabv() {
    }

    public zzabv(String str) {
        HashMap zzb = zzzn.zzb(str);
        if (zzb != null) {
            this.zza = (Long) zzb.get(0);
            this.zzb = (Long) zzb.get(1);
            this.zzc = (Long) zzb.get(2);
            this.zzd = (Long) zzb.get(3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzn
    public final HashMap<Integer, Long> zza() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        hashMap.put(3, this.zzd);
        return hashMap;
    }
}
