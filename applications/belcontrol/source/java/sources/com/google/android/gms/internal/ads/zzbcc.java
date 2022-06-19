package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcc.class */
public final /* synthetic */ class zzbcc implements Runnable {
    private final int zzefe;
    private final zzbbr zzenn;

    public zzbcc(zzbbr zzbbrVar, int i) {
        this.zzenn = zzbbrVar;
        this.zzefe = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzenn.zzdr(this.zzefe);
    }
}
