package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeih.class */
public final /* synthetic */ class zzeih implements Runnable {
    private final zzdsw zza;

    private zzeih(zzdsw zzdswVar) {
        this.zza = zzdswVar;
    }

    public static Runnable zza(zzdsw zzdswVar) {
        return new zzeih(zzdswVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb();
    }
}
