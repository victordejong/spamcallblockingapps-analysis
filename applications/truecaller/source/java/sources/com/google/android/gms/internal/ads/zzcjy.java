package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjy.class */
public final class zzcjy {
    private final zzauc zza = new zzauc(true, 65536);
    private long zzb = 15000000;
    private long zzc = 30000000;
    private long zzd = 2500000;
    private long zze = 5000000;
    private int zzf;
    private boolean zzg;

    public final void zza() {
        zzk(false);
    }

    public final void zzb(zzanr[] zzanrVarArr, zzatg zzatgVar, zzats zzatsVar) {
        this.zzf = 0;
        for (int i = 0; i < 2; i++) {
            if (zzatsVar.zza(i) != null) {
                this.zzf = zzave.zzq(zzanrVarArr[i].zza()) + this.zzf;
            }
        }
        this.zza.zzb(this.zzf);
    }

    public final void zzc() {
        zzk(true);
    }

    public final void zzd() {
        zzk(true);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    public final boolean zze(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            char c = z ? this.zze : this.zzd;
            z2 = c <= 0 || j >= c;
        }
        return z2;
    }

    public final boolean zzf(long j) {
        boolean z;
        synchronized (this) {
            boolean z2 = j > this.zzc ? false : j < this.zzb ? true : true;
            int zzg = this.zza.zzg();
            int i = this.zzf;
            z = true;
            if (!z2) {
                z = z2 && this.zzg && zzg < i;
            }
            this.zzg = z;
        }
        return z;
    }

    public final void zzg(int i) {
        synchronized (this) {
            this.zzb = i * 1000;
        }
    }

    public final void zzh(int i) {
        synchronized (this) {
            this.zzc = i * 1000;
        }
    }

    public final void zzi(int i) {
        synchronized (this) {
            this.zzd = i * 1000;
        }
    }

    public final void zzj(int i) {
        synchronized (this) {
            this.zze = i * 1000;
        }
    }

    @VisibleForTesting
    public final void zzk(boolean z) {
        this.zzf = 0;
        this.zzg = false;
        if (z) {
            this.zza.zza();
        }
    }

    public final zzauc zzl() {
        return this.zza;
    }
}
