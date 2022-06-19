package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcio.class */
public final class zzcio implements Runnable {
    public final /* synthetic */ boolean zza;
    public final /* synthetic */ zzcip zzb;

    public zzcio(zzcip zzcipVar, boolean z) {
        this.zzb = zzcipVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzI("windowVisibilityChanged", "isVisible", String.valueOf(this.zza));
    }
}
