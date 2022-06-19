package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzced.class */
public final class zzced extends zzcef {
    private final String zza;
    private final int zzb;

    public zzced(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzced)) {
            return false;
        }
        zzced zzcedVar = (zzced) obj;
        return Objects.equal(this.zza, zzcedVar.zza) && Objects.equal(Integer.valueOf(this.zzb), Integer.valueOf(zzcedVar.zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzceg
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzceg
    public final String zzc() {
        return this.zza;
    }
}
