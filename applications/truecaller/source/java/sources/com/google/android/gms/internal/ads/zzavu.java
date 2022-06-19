package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavu.class */
public final class zzavu implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ int zzb;
    public final /* synthetic */ int zzc;
    public final /* synthetic */ float zzd;
    public final /* synthetic */ zzavx zze;

    public zzavu(zzavx zzavxVar, int i, int i2, int i3, float f) {
        this.zze = zzavxVar;
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzavy zzavyVar;
        zzavyVar = this.zze.zzb;
        zzavyVar.zzn(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
