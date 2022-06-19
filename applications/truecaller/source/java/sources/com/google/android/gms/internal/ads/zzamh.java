package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamh.class */
public final class zzamh implements zzalp {
    private final zzaku zza;
    private boolean zzb;
    private long zzc;
    private long zzd;
    private zzahf zze = zzahf.zza;

    public zzamh(zzaku zzakuVar) {
        this.zza = zzakuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final zzahf zzA() {
        return this.zze;
    }

    public final void zza() {
        if (!this.zzb) {
            this.zzd = SystemClock.elapsedRealtime();
            this.zzb = true;
        }
    }

    public final void zzb() {
        if (this.zzb) {
            zzc(zzy());
            this.zzb = false;
        }
    }

    public final void zzc(long j) {
        this.zzc = j;
        if (this.zzb) {
            this.zzd = SystemClock.elapsedRealtime();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzalp
    public final long zzy() {
        ?? r0 = this.zzc;
        char c = r0;
        if (this.zzb) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzd;
            zzahf zzahfVar = this.zze;
            c = r0 + (zzahfVar.zzb == 1.0f ? zzadx.zzb(elapsedRealtime) : zzahfVar.zza(elapsedRealtime));
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzz(zzahf zzahfVar) {
        if (this.zzb) {
            zzc(zzy());
        }
        this.zze = zzahfVar;
    }
}
