package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcku.class */
final class zzcku implements Runnable {
    public final /* synthetic */ boolean zza;
    public final /* synthetic */ zzckv zzb;

    public zzcku(zzckv zzckvVar, boolean z) {
        this.zzb = zzckvVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzI("windowVisibilityChanged", "isVisible", String.valueOf(this.zza));
    }
}
