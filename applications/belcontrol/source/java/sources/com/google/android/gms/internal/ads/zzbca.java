package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbca.class */
public final /* synthetic */ class zzbca implements Runnable {
    private final int zzefe;
    private final int zzeff;
    private final zzbbr zzenn;

    public zzbca(zzbbr zzbbrVar, int i, int i2) {
        this.zzenn = zzbbrVar;
        this.zzefe = i;
        this.zzeff = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzenn.zzp(this.zzefe, this.zzeff);
    }
}
