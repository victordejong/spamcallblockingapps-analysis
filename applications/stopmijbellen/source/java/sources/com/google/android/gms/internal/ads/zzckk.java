package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckk.class */
public final class zzckk implements Runnable {
    public final /* synthetic */ zzckm zza;

    public zzckk(zzckm zzckmVar) {
        this.zza = zzckmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzckn zzcknVar;
        boolean z;
        zzckn zzcknVar2;
        zzckn zzcknVar3;
        zzcknVar = this.zza.zzs;
        if (zzcknVar != null) {
            z = this.zza.zzt;
            if (!z) {
                zzcknVar3 = this.zza.zzs;
                zzcknVar3.zzg();
                this.zza.zzt = true;
            }
            zzcknVar2 = this.zza.zzs;
            zzcknVar2.zze();
        }
    }
}
