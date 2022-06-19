package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzava.class */
public final class zzava implements zzaut {
    private boolean zza;
    private long zzb;
    private long zzc;
    private zzanq zzd = zzanq.zza;

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaut
    public final long zzP() {
        ?? r0 = this.zzb;
        char c = r0;
        if (this.zza) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzc;
            zzanq zzanqVar = this.zzd;
            c = r0 + (zzanqVar.zzb == 1.0f ? zzamx.zzb(elapsedRealtime) : zzanqVar.zza(elapsedRealtime));
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzaut
    public final zzanq zzQ(zzanq zzanqVar) {
        if (this.zza) {
            zzc(zzP());
        }
        this.zzd = zzanqVar;
        return zzanqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaut
    public final zzanq zzR() {
        throw null;
    }

    public final void zza() {
        if (!this.zza) {
            this.zzc = SystemClock.elapsedRealtime();
            this.zza = true;
        }
    }

    public final void zzb() {
        if (this.zza) {
            zzc(zzP());
            this.zza = false;
        }
    }

    public final void zzc(long j) {
        this.zzb = j;
        if (this.zza) {
            this.zzc = SystemClock.elapsedRealtime();
        }
    }

    public final void zzd(zzaut zzautVar) {
        zzc(zzautVar.zzP());
        this.zzd = zzautVar.zzR();
    }
}
