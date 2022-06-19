package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcip.class */
final class zzcip extends Thread {
    public final /* synthetic */ String zza;

    public zzcip(zzciq zzciqVar, String str) {
        this.zza = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zzcje(null).zza(this.zza);
    }
}
