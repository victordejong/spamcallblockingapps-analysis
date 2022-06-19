package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrr.class */
public final class zzrr extends zzcd {
    private static final Object zzc = new Object();
    private static final zzaz zzd;
    private final long zze;
    private final long zzf;
    private final boolean zzg;
    private final zzaz zzh;
    private final zzas zzi;

    static {
        zzaf zzafVar = new zzaf();
        zzafVar.zza("SinglePeriodTimeline");
        zzafVar.zzb(Uri.EMPTY);
        zzd = zzafVar.zzc();
    }

    public zzrr(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, zzaz zzazVar, zzas zzasVar) {
        this.zze = j4;
        this.zzf = j5;
        this.zzg = z;
        this.zzh = zzazVar;
        this.zzi = zzasVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zza(Object obj) {
        return zzc.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final zzca zzd(int i, zzca zzcaVar, boolean z) {
        zzdy.zza(i, 0, 1);
        zzcaVar.zzj(null, z ? zzc : null, 0, this.zze, 0L, zzd.zza, false);
        return zzcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final zzcc zze(int i, zzcc zzccVar, long j) {
        zzdy.zza(i, 0, 1);
        zzccVar.zza(zzcc.zza, this.zzh, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.zzg, false, this.zzi, 0L, this.zzf, 0, 0, 0L);
        return zzccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final Object zzf(int i) {
        zzdy.zza(i, 0, 1);
        return zzc;
    }
}
