package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcca.class */
public final /* synthetic */ class zzcca implements Runnable {
    private final boolean zzekn;
    private final zzcbu zzgdg;

    public zzcca(zzcbu zzcbuVar, boolean z) {
        this.zzgdg = zzcbuVar;
        this.zzekn = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgdg.zzbi(this.zzekn);
    }
}
