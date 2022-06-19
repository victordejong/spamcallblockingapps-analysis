package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcki.class */
final class zzcki implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ int zzb;
    public final /* synthetic */ zzckm zzc;

    public zzcki(zzckm zzckmVar, int i, int i2) {
        this.zzc = zzckmVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzckn zzcknVar;
        zzckn zzcknVar2;
        zzcknVar = this.zzc.zzs;
        if (zzcknVar != null) {
            zzcknVar2 = this.zzc.zzs;
            zzcknVar2.zzj(this.zza, this.zzb);
        }
    }
}
