package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccc.class */
public final class zzccc {
    private zzaem zzclh;

    public zzccc(zzcbs zzcbsVar) {
        this.zzclh = zzcbsVar;
    }

    public final void zza(zzaem zzaemVar) {
        synchronized (this) {
            this.zzclh = zzaemVar;
        }
    }

    public final zzaem zzty() {
        zzaem zzaemVar;
        synchronized (this) {
            zzaemVar = this.zzclh;
        }
        return zzaemVar;
    }
}
