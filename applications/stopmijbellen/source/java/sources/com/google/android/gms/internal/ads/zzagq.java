package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagq.class */
public final class zzagq implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ zzags zzc;

    public zzagq(zzags zzagsVar, String str, long j) {
        this.zzc = zzagsVar;
        this.zza = str;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzahd zzahdVar;
        zzahd zzahdVar2;
        zzahdVar = this.zzc.zza;
        zzahdVar.zza(this.zza, this.zzb);
        zzahdVar2 = this.zzc.zza;
        zzahdVar2.zzb(this.zzc.toString());
    }
}
