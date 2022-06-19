package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamk.class */
public final class zzamk extends zzakd<Integer, Object> {
    public Long zza;
    public Boolean zzb;
    public Boolean zzc;

    public zzamk() {
    }

    public zzamk(String str) {
        HashMap zza = zzakd.zza(str);
        if (zza != null) {
            this.zza = (Long) zza.get(0);
            this.zzb = (Boolean) zza.get(1);
            this.zzc = (Boolean) zza.get(2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final HashMap<Integer, Object> zzb() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        return hashMap;
    }
}
