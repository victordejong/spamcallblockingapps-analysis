package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zziv.class */
public final class zziv implements zzht {
    private final zzdz zza;
    private boolean zzb;
    private long zzc;
    private long zzd;
    private zzbn zze = zzbn.zza;

    public zziv(zzdz zzdzVar) {
        this.zza = zzdzVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzht
    public final long zza() {
        ?? r0 = this.zzc;
        char c = r0;
        if (this.zzb) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzd;
            zzbn zzbnVar = this.zze;
            c = r0 + (zzbnVar.zzc == 1.0f ? zzk.zzc(elapsedRealtime) : zzbnVar.zza(elapsedRealtime));
        }
        return c;
    }

    public final void zzb(long j) {
        this.zzc = j;
        if (this.zzb) {
            this.zzd = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzht
    public final zzbn zzc() {
        return this.zze;
    }

    public final void zzd() {
        if (!this.zzb) {
            this.zzd = SystemClock.elapsedRealtime();
            this.zzb = true;
        }
    }

    public final void zze() {
        if (this.zzb) {
            zzb(zza());
            this.zzb = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzht
    public final void zzg(zzbn zzbnVar) {
        if (this.zzb) {
            zzb(zza());
        }
        this.zze = zzbnVar;
    }
}
