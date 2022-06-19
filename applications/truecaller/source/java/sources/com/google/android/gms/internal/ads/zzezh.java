package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezh.class */
public final /* synthetic */ class zzezh implements Runnable {
    private final zzezc zza;

    private zzezh(zzezc zzezcVar) {
        this.zza = zzezcVar;
    }

    public static Runnable zza(zzezc zzezcVar) {
        return new zzezh(zzezcVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzf();
    }
}
