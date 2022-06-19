package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnd.class */
public final /* synthetic */ class zzbnd implements Runnable {
    private final Runnable zzfqi;
    private final zzbnb zzfvo;

    public zzbnd(zzbnb zzbnbVar, Runnable runnable) {
        this.zzfvo = zzbnbVar;
        this.zzfqi = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzfvo.zze(this.zzfqi);
    }
}
