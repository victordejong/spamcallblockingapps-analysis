package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmd.class */
public final class zzcmd {
    private final zzavz zza = new zzavz(true, 65536);
    private long zzb = 15000000;
    private long zzc = 30000000;
    private long zzd = 2500000;
    private long zze = 5000000;
    private int zzf;
    private boolean zzg;

    public final void zza() {
        zze(false);
    }

    public final void zzb() {
        zze(true);
    }

    public final void zzc() {
        zze(true);
    }

    public final void zzd(zzapl[] zzaplVarArr, zzavd zzavdVar, zzavp zzavpVar) {
        this.zzf = 0;
        for (int i = 0; i < 2; i++) {
            if (zzavpVar.zza(i) != null) {
                this.zzf = zzaxb.zzf(zzaplVarArr[i].zzc()) + this.zzf;
            }
        }
        this.zza.zzf(this.zzf);
    }

    @VisibleForTesting
    public final void zze(boolean z) {
        this.zzf = 0;
        this.zzg = false;
        if (z) {
            this.zza.zze();
        }
    }

    public final void zzf(int i) {
        synchronized (this) {
            this.zzd = i * 1000;
        }
    }

    public final void zzg(int i) {
        synchronized (this) {
            this.zze = i * 1000;
        }
    }

    public final void zzh(int i) {
        synchronized (this) {
            this.zzc = i * 1000;
        }
    }

    public final void zzi(int i) {
        synchronized (this) {
            this.zzb = i * 1000;
        }
    }

    public final boolean zzj(long j) {
        boolean z;
        synchronized (this) {
            boolean z2 = j > this.zzc ? false : j < this.zzb ? true : true;
            int zza = this.zza.zza();
            int i = this.zzf;
            z = true;
            if (!z2) {
                z = z2 && this.zzg && zza < i;
            }
            this.zzg = z;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    public final boolean zzk(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            char c = z ? this.zze : this.zzd;
            z2 = c <= 0 || j >= c;
        }
        return z2;
    }

    public final zzavz zzl() {
        return this.zza;
    }
}
