package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdab.class */
public final class zzdab implements zzgpr<Boolean> {
    private final zzgqe<zzfef> zza;

    public zzdab(zzgqe<zzfef> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    /* renamed from: zza */
    public final Boolean zzb() {
        boolean z = true;
        if (((zzdei) this.zza).zza().zza() == null) {
            z = ((Boolean) zzbgq.zzc().zzb(zzblj.zzdX)).booleanValue();
        }
        return Boolean.valueOf(z);
    }
}
