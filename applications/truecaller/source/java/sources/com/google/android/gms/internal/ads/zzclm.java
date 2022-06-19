package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclm.class */
public final class zzclm implements zzafy {
    private final zzko zza = new zzko(true, 65536);
    private long zzb = 15000000;
    private long zzc = 30000000;
    private long zzd = 2500000;
    private long zze = 5000000;
    private int zzf;
    private boolean zzg;

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zza() {
        zzn(false);
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zzb() {
        zzn(true);
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zzc() {
        zzn(true);
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final long zzd() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final boolean zze() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final boolean zzf(long j, long j2, float f) {
        boolean z = j2 > this.zzc ? false : j2 < this.zzb ? true : true;
        int zzg = this.zza.zzg();
        int i = this.zzf;
        boolean z2 = true;
        if (!z) {
            z2 = z && this.zzg && zzg < i;
        }
        this.zzg = z2;
        return z2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzafy
    public final boolean zzg(long j, float f, boolean z, long j2) {
        char c = z ? this.zze : this.zzd;
        return c <= 0 || j >= c;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final zzko zzh() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zzi(zzahv[] zzahvVarArr, zzs zzsVar, zzjg[] zzjgVarArr) {
        this.zzf = 0;
        for (int i = 0; i < 2; i++) {
            if (zzjgVarArr[i] != null) {
                this.zzf += zzahvVarArr[i].zzac() != 1 ? 131072000 : 13107200;
            }
        }
        this.zza.zzb(this.zzf);
    }

    public final void zzj(int i) {
        synchronized (this) {
            this.zzb = i * 1000;
        }
    }

    public final void zzk(int i) {
        synchronized (this) {
            this.zzc = i * 1000;
        }
    }

    public final void zzl(int i) {
        synchronized (this) {
            this.zzd = i * 1000;
        }
    }

    public final void zzm(int i) {
        synchronized (this) {
            this.zze = i * 1000;
        }
    }

    @VisibleForTesting
    public final void zzn(boolean z) {
        this.zzf = 0;
        this.zzg = false;
        if (z) {
            this.zza.zza();
        }
    }
}
