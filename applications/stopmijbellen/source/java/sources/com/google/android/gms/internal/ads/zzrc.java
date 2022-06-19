package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrc.class */
public final class zzrc implements zzqk {
    private final zzdh zza;
    private final zzrb zzc;
    private final zznb zze = new zznb();
    private final zztq zzd = new zztq(-1);
    private int zzb = 1048576;

    public zzrc(zzdh zzdhVar, zzww zzwwVar) {
        zzrb zzrbVar = new zzrb(zzwwVar);
        this.zza = zzdhVar;
        this.zzc = zzrbVar;
    }

    public final zzrc zza(int i) {
        this.zzb = i;
        return this;
    }

    public final zzre zzb(zzaz zzazVar) {
        Objects.requireNonNull(zzazVar.zzd);
        return new zzre(zzazVar, this.zza, this.zzc, zznk.zza, this.zzd, this.zzb, null, null);
    }
}
