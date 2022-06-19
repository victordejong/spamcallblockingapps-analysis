package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafh.class */
public final class zzafh implements zzahu {
    public final /* synthetic */ zzafp zza;

    public zzafh(zzafp zzafpVar) {
        this.zza = zzafpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final void zza(long j) {
        if (j >= 2000) {
            this.zza.zzE = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final void zzb() {
        zzalg zzalgVar;
        zzalgVar = this.zza.zzh;
        zzalgVar.zzf(2);
    }
}
