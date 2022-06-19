package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlf.class */
public final class zzlf implements Runnable {
    private final zzle zza;

    public zzlf(zzle zzleVar) {
        this.zza = zzleVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzv();
    }
}
