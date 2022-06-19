package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavb.class */
public final class zzavb extends zzapr {
    private static final Object zzb = new Object();
    private final long zzc;
    private final long zzd;

    public zzavb(long j, boolean z) {
        this.zzc = j;
        this.zzd = j;
    }

    @Override // com.google.android.gms.internal.ads.zzapr
    public final int zza(Object obj) {
        return zzb.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzapr
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzapr
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzapr
    public final zzapp zzd(int i, zzapp zzappVar, boolean z) {
        zzawm.zza(i, 0, 1);
        Object obj = z ? zzb : null;
        long j = this.zzc;
        zzappVar.zza = obj;
        zzappVar.zzb = obj;
        zzappVar.zzc = j;
        return zzappVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapr
    public final zzapq zze(int i, zzapq zzapqVar, boolean z, long j) {
        zzawm.zza(i, 0, 1);
        zzapqVar.zza = this.zzd;
        return zzapqVar;
    }
}
