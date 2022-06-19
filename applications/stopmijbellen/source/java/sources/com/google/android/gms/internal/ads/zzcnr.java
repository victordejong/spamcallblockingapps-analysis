package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnr.class */
public final class zzcnr implements zzhs {
    private final zztk zza = new zztk(true, 65536);
    private long zzb = 15000000;
    private long zzc = 30000000;
    private long zzd = 2500000;
    private long zze = 5000000;
    private int zzf;
    private boolean zzg;

    @Override // com.google.android.gms.internal.ads.zzhs
    public final long zza() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzb() {
        zzj(false);
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzc() {
        zzj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzd() {
        zzj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final boolean zze() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final boolean zzf(long j, long j2, float f) {
        boolean z = j2 > this.zzc ? false : j2 < this.zzb ? true : true;
        int zza = this.zza.zza();
        int i = this.zzf;
        boolean z2 = true;
        if (!z) {
            z2 = z && this.zzg && zza < i;
        }
        this.zzg = z2;
        return z2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzhs
    public final boolean zzg(long j, float f, boolean z, long j2) {
        char c = z ? this.zze : this.zzd;
        return c <= 0 || j >= c;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final zztk zzh() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    public final void zzi(zzil[] zzilVarArr, zzch zzchVar, zzsb[] zzsbVarArr) {
        this.zzf = 0;
        for (int i = 0; i < 2; i++) {
            if (zzsbVarArr[i] != null) {
                this.zzf += zzilVarArr[i].zzb() != 1 ? 131072000 : 13107200;
            }
        }
        this.zza.zzf(this.zzf);
    }

    @VisibleForTesting
    public final void zzj(boolean z) {
        this.zzf = 0;
        this.zzg = false;
        if (z) {
            this.zza.zze();
        }
    }

    public final void zzk(int i) {
        synchronized (this) {
            this.zzd = i * 1000;
        }
    }

    public final void zzl(int i) {
        synchronized (this) {
            this.zze = i * 1000;
        }
    }

    public final void zzm(int i) {
        synchronized (this) {
            this.zzc = i * 1000;
        }
    }

    public final void zzn(int i) {
        synchronized (this) {
            this.zzb = i * 1000;
        }
    }
}
