package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwa.class */
public final class zzwa implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ zzwc zzc;

    public zzwa(zzwc zzwcVar, String str, long j) {
        this.zzc = zzwcVar;
        this.zza = str;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwn zzwnVar;
        zzwn zzwnVar2;
        zzwnVar = this.zzc.zza;
        zzwnVar.zza(this.zza, this.zzb);
        zzwnVar2 = this.zzc.zza;
        zzwnVar2.zzb(this.zzc.toString());
    }
}
