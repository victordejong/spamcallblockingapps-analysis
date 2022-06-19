package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbaz.class */
public final /* synthetic */ class zzbaz implements Runnable {
    private final zzbax zzekm;
    private final boolean zzekn;

    public zzbaz(zzbax zzbaxVar, boolean z) {
        this.zzekm = zzbaxVar;
        this.zzekn = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzekm.zzav(this.zzekn);
    }
}
