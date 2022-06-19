package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckt.class */
final class zzckt implements Runnable {
    public final /* synthetic */ zzckv zza;

    public zzckt(zzckv zzckvVar) {
        this.zza = zzckvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzI("surfaceDestroyed", new String[0]);
    }
}
