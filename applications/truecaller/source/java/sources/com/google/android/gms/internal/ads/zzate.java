package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzate.class */
public final class zzate extends zzanx {
    private static final Object zzb = new Object();
    private final long zzc;
    private final long zzd;

    public zzate(long j, boolean z) {
        this.zzc = j;
        this.zzd = j;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zzanw zzb(int i, zzanw zzanwVar, boolean z, long j) {
        zzaup.zzc(i, 0, 1);
        zzanwVar.zza = this.zzd;
        return zzanwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zzanv zzd(int i, zzanv zzanvVar, boolean z) {
        zzaup.zzc(i, 0, 1);
        Object obj = z ? zzb : null;
        long j = this.zzc;
        zzanvVar.zza = obj;
        zzanvVar.zzb = obj;
        zzanvVar.zzc = j;
        return zzanvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final int zze(Object obj) {
        return zzb.equals(obj) ? 0 : -1;
    }
}
