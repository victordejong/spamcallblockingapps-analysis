package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefa.class */
public final /* synthetic */ class zzefa implements Runnable {
    private final zzcml zza;

    private zzefa(zzcml zzcmlVar) {
        this.zza = zzcmlVar;
    }

    public static Runnable zza(zzcml zzcmlVar) {
        return new zzefa(zzcmlVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzau();
    }
}
