package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakf.class */
public final class zzakf extends zzakd<Integer, Object> {
    public String zza;
    public long zzb;
    public String zzc;
    public String zzd;
    public String zze;

    public zzakf() {
        this.zza = "E";
        this.zzb = -1L;
        this.zzc = "E";
        this.zzd = "E";
        this.zze = "E";
    }

    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    public zzakf(String str) {
        this.zza = "E";
        char c = 65535;
        this.zzb = -1L;
        this.zzc = "E";
        this.zzd = "E";
        this.zze = "E";
        HashMap zza = zzakd.zza(str);
        if (zza != null) {
            this.zza = zza.get(0) == null ? "E" : (String) zza.get(0);
            this.zzb = zza.get(1) != null ? ((Long) zza.get(1)).longValue() : c;
            this.zzc = zza.get(2) == null ? "E" : (String) zza.get(2);
            this.zzd = zza.get(3) == null ? "E" : (String) zza.get(3);
            this.zze = zza.get(4) == null ? "E" : (String) zza.get(4);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final HashMap<Integer, Object> zzb() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zza);
        hashMap.put(4, this.zze);
        hashMap.put(3, this.zzd);
        hashMap.put(2, this.zzc);
        hashMap.put(1, Long.valueOf(this.zzb));
        return hashMap;
    }
}
