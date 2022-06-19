package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckj.class */
final class zzckj implements Runnable {
    public final /* synthetic */ zzckm zza;

    public zzckj(zzckm zzckmVar) {
        this.zza = zzckmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzckn zzcknVar;
        zzckn zzcknVar2;
        zzckn zzcknVar3;
        zzcknVar = this.zza.zzs;
        if (zzcknVar != null) {
            zzcknVar2 = this.zza.zzs;
            zzcknVar2.zzd();
            zzcknVar3 = this.zza.zzs;
            zzcknVar3.zzi();
        }
    }
}
