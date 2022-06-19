package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhi.class */
public final class zzhi implements zzik {
    public final /* synthetic */ zzhp zza;

    public zzhi(zzhp zzhpVar) {
        this.zza = zzhpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzik
    public final void zza(long j) {
        if (j >= 2000) {
            this.zza.zzD = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzik
    public final void zzb() {
        zzei zzeiVar;
        zzeiVar = this.zza.zzh;
        zzeiVar.zzh(2);
    }
}
