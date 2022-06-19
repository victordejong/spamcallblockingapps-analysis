package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalz.class */
public final class zzalz extends zzakd<Integer, Long> {
    public long zza;
    public long zzb;

    public zzalz() {
        this.zza = -1L;
        this.zzb = -1L;
    }

    public zzalz(String str) {
        this.zza = -1L;
        this.zzb = -1L;
        HashMap zza = zzakd.zza(str);
        if (zza != null) {
            this.zza = ((Long) zza.get(0)).longValue();
            this.zzb = ((Long) zza.get(1)).longValue();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final HashMap<Integer, Long> zzb() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.zza));
        hashMap.put(1, Long.valueOf(this.zzb));
        return hashMap;
    }
}
