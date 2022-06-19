package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtc.class */
public final /* synthetic */ class zzbtc implements Runnable {
    private final zzbsn zza;

    private zzbtc(zzbsn zzbsnVar) {
        this.zza = zzbsnVar;
    }

    public static Runnable zza(zzbsn zzbsnVar) {
        return new zzbtc(zzbsnVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzi();
    }
}
