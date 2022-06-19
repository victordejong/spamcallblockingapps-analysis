package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zziy.class */
public final class zziy extends zzaiq {
    private static final Object zza = new Object();
    private static final zzagk zzb;
    private final long zze;
    private final long zzf;
    private final boolean zzg;
    private final zzagk zzh;
    private final zzagh zzi;

    static {
        zzagb zzagbVar = new zzagb();
        zzagbVar.zza("SinglePeriodTimeline");
        zzagbVar.zzb(Uri.EMPTY);
        zzb = zzagbVar.zzc();
    }

    public zziy(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, zzagk zzagkVar, zzagh zzaghVar) {
        this.zze = j4;
        this.zzf = j5;
        this.zzg = z;
        this.zzh = zzagkVar;
        this.zzi = zzaghVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final zzaip zzf(int i, zzaip zzaipVar, long j) {
        zzakt.zzc(i, 0, 1);
        zzaipVar.zza(zzaip.zza, this.zzh, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.zzg, false, this.zzi, 0L, this.zzf, 0, 0, 0L);
        return zzaipVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzg() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final zzain zzh(int i, zzain zzainVar, boolean z) {
        zzakt.zzc(i, 0, 1);
        zzainVar.zza(null, z ? zza : null, 0, this.zze, 0L, zzd.zza, false);
        return zzainVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzi(Object obj) {
        return zza.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final Object zzj(int i) {
        zzakt.zzc(i, 0, 1);
        return zza;
    }
}
