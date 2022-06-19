package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckl.class */
final class zzckl implements Runnable {
    public final /* synthetic */ zzckm zza;

    public zzckl(zzckm zzckmVar) {
        this.zza = zzckmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzckn zzcknVar;
        zzckn zzcknVar2;
        zzcknVar = this.zza.zzs;
        if (zzcknVar != null) {
            zzcknVar2 = this.zza.zzs;
            zzcknVar2.zzd();
        }
    }
}
