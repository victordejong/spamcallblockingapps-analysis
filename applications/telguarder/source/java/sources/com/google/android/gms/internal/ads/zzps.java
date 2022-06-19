package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzps.class */
public final class zzps implements zzpk {
    private boolean started;
    private zzhz zzafi = zzhz.zzaia;
    private long zzbkl;
    private long zzbkm;

    public final void start() {
        if (!this.started) {
            this.zzbkm = SystemClock.elapsedRealtime();
            this.started = true;
        }
    }

    public final void stop() {
        if (this.started) {
            zzel(zzgc());
            this.started = false;
        }
    }

    public final void zza(zzpk zzpkVar) {
        zzel(zzpkVar.zzgc());
        this.zzafi = zzpkVar.zzfs();
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final zzhz zzb(zzhz zzhzVar) {
        if (this.started) {
            zzel(zzgc());
        }
        this.zzafi = zzhzVar;
        return zzhzVar;
    }

    public final void zzel(long j) {
        this.zzbkl = j;
        if (this.started) {
            this.zzbkm = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final zzhz zzfs() {
        return this.zzafi;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpk
    public final long zzgc() {
        ?? r0 = this.zzbkl;
        char c = r0;
        if (this.started) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzbkm;
            c = r0 + (this.zzafi.zzaib == 1.0f ? zzhf.zzdp(elapsedRealtime) : this.zzafi.zzdu(elapsedRealtime));
        }
        return c;
    }
}
