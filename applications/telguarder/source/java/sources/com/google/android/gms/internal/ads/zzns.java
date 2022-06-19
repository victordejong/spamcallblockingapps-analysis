package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzns.class */
public final class zzns extends zzid {
    private static final Object zzbgq = new Object();
    private final boolean zzaik;
    private final boolean zzail;
    private final long zzbgr;
    private final long zzbgs;
    private final long zzbgt;
    private final long zzbgu;

    private zzns(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.zzbgr = j;
        this.zzbgs = j2;
        this.zzbgt = 0L;
        this.zzbgu = 0L;
        this.zzaik = z;
        this.zzail = false;
    }

    public zzns(long j, boolean z) {
        this(j, j, 0L, 0L, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final zzie zza(int i, zzie zzieVar, boolean z, long j) {
        zzpg.zzc(i, 0, 1);
        boolean z2 = this.zzaik;
        long j2 = this.zzbgs;
        zzieVar.zzaih = null;
        zzieVar.zzaii = -9223372036854775807L;
        zzieVar.zzaij = -9223372036854775807L;
        zzieVar.zzaik = z2;
        zzieVar.zzail = false;
        zzieVar.zzaio = 0L;
        zzieVar.zzaip = j2;
        zzieVar.zzaim = 0;
        zzieVar.zzain = 0;
        zzieVar.zzaiq = 0L;
        return zzieVar;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final zzif zza(int i, zzif zzifVar, boolean z) {
        zzpg.zzc(i, 0, 1);
        Object obj = z ? zzbgq : null;
        return zzifVar.zza(obj, obj, 0, this.zzbgr, 0L, false);
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final int zzc(Object obj) {
        return zzbgq.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final int zzff() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final int zzfg() {
        return 1;
    }
}
