package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawx.class */
public final class zzawx implements zzawq {
    private boolean zza;
    private long zzb;
    private long zzc;
    private zzapk zzd = zzapk.zza;

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzawq
    public final long zzI() {
        ?? r0 = this.zzb;
        char c = r0;
        if (this.zza) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzc;
            zzapk zzapkVar = this.zzd;
            c = r0 + (zzapkVar.zzb == 1.0f ? zzaor.zza(elapsedRealtime) : zzapkVar.zza(elapsedRealtime));
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzawq
    public final zzapk zzJ() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzawq
    public final zzapk zzK(zzapk zzapkVar) {
        if (this.zza) {
            zza(zzI());
        }
        this.zzd = zzapkVar;
        return zzapkVar;
    }

    public final void zza(long j) {
        this.zzb = j;
        if (this.zza) {
            this.zzc = SystemClock.elapsedRealtime();
        }
    }

    public final void zzb() {
        if (!this.zza) {
            this.zzc = SystemClock.elapsedRealtime();
            this.zza = true;
        }
    }

    public final void zzc() {
        if (this.zza) {
            zza(zzI());
            this.zza = false;
        }
    }

    public final void zzd(zzawq zzawqVar) {
        zza(zzawqVar.zzI());
        this.zzd = zzawqVar.zzJ();
    }
}
