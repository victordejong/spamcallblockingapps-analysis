package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxt.class */
public final class zzcxt implements zzfrz<zzcxg> {
    public final /* synthetic */ zzfrz zza;
    public final /* synthetic */ zzcxu zzb;

    public zzcxt(zzcxu zzcxuVar, zzfrz zzfrzVar) {
        this.zzb = zzcxuVar;
        this.zza = zzfrzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzchg.zze.execute(new Runnable(this.zzb) { // from class: com.google.android.gms.internal.ads.zzcxr
            private final zzcxu zza;

            {
                this.zza = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zze();
            }
        });
        this.zza.zza(th);
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzcxg zzcxgVar) {
        zzchg.zze.execute(new Runnable(this.zzb) { // from class: com.google.android.gms.internal.ads.zzcxr
            private final zzcxu zza;

            {
                this.zza = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zze();
            }
        });
        this.zza.zzb(zzcxgVar);
    }
}
