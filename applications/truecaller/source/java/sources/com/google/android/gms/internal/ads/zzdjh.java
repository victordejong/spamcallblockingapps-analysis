package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjh.class */
public final /* synthetic */ class zzdjh implements Runnable {
    private final zzcml zza;

    private zzdjh(zzcml zzcmlVar) {
        this.zza = zzcmlVar;
    }

    public static Runnable zza(zzcml zzcmlVar) {
        return new zzdjh(zzcmlVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.destroy();
    }
}
