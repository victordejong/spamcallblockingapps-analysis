package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcta.class */
final class zzcta implements zzdzz {
    private final zzcui zza;
    private final zzctg zzb;
    private Long zzc;
    private String zzd;

    public /* synthetic */ zzcta(zzcui zzcuiVar, zzctg zzctgVar, zzcsz zzcszVar) {
        this.zza = zzcuiVar;
        this.zzb = zzctgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzz
    public final /* synthetic */ zzdzz zza(String str) {
        Objects.requireNonNull(str);
        this.zzd = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdzz
    public final /* bridge */ /* synthetic */ zzdzz zzb(long j) {
        this.zzc = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdzz
    public final zzeaa zzc() {
        zzgpz.zzc(this.zzc, Long.class);
        zzgpz.zzc(this.zzd, String.class);
        return new zzctc(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
