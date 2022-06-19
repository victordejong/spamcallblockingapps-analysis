package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbw.class */
public final class zzcbw extends zzcby {
    private final String zza;
    private final int zzb;

    public zzcbw(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzcbw)) {
            return false;
        }
        zzcbw zzcbwVar = (zzcbw) obj;
        return Objects.m38910a(this.zza, zzcbwVar.zza) && Objects.m38910a(Integer.valueOf(this.zzb), Integer.valueOf(zzcbwVar.zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzcbz
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcbz
    public final int zzc() {
        return this.zzb;
    }
}
