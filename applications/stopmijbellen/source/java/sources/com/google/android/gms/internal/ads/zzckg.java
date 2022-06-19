package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckg.class */
public final class zzckg implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzckm zzc;

    public zzckg(zzckm zzckmVar, String str, String str2) {
        this.zzc = zzckmVar;
        this.zza = str;
        this.zzb = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzckn zzcknVar;
        zzckn zzcknVar2;
        zzcknVar = this.zzc.zzs;
        if (zzcknVar != null) {
            zzcknVar2 = this.zzc.zzs;
            zzcknVar2.zzb(this.zza, this.zzb);
        }
    }
}
