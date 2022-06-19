package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmg.class */
public final /* synthetic */ class zzdmg implements Runnable {
    private final zzdlh zzhil;

    private zzdmg(zzdlh zzdlhVar) {
        this.zzhil = zzdlhVar;
    }

    public static Runnable zzb(zzdlh zzdlhVar) {
        return new zzdmg(zzdlhVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzhil.onAdLoaded();
    }
}
