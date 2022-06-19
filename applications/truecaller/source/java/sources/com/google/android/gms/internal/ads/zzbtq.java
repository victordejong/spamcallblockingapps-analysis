package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtq.class */
public final class zzbtq implements zzchp<zzbsn> {
    public final /* synthetic */ zzbtr zza;

    public zzbtq(zzbtr zzbtrVar) {
        this.zza = zzbtrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzchp
    public final /* bridge */ /* synthetic */ void zza(zzbsn zzbsnVar) {
        zzchg.zze.execute(new Runnable(this, zzbsnVar) { // from class: com.google.android.gms.internal.ads.zzbtp
            private final zzbtq zza;
            private final zzbsn zzb;

            {
                this.zza = this;
                this.zzb = zzbsnVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbsn zzbsnVar3 = this.zzb;
                zzbsnVar3.zzm("/result", zzbpq.zzo);
                zzbsnVar3.zzi();
            }
        });
    }
}
