package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsy.class */
public final class zzsy implements Runnable {
    private final /* synthetic */ zzsz zzbvc;

    public zzsy(zzsz zzszVar) {
        this.zzbvc = zzszVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbvc.disconnect();
    }
}
