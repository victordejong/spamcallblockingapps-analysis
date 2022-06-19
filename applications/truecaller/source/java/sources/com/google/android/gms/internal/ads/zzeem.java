package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeem.class */
public final /* synthetic */ class zzeem implements Runnable {
    private final zzdsw zza;

    private zzeem(zzdsw zzdswVar) {
        this.zza = zzdswVar;
    }

    public static Runnable zza(zzdsw zzdswVar) {
        return new zzeem(zzdswVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb();
    }
}
