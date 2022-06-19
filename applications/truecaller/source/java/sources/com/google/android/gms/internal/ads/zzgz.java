package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgz.class */
public final class zzgz extends zzgu {
    public static final Object zzb = new Object();
    private final Object zze;
    private final Object zzf;

    private zzgz(zzaiq zzaiqVar, Object obj, Object obj2) {
        super(zzaiqVar);
        this.zze = obj;
        this.zzf = obj2;
    }

    public static /* synthetic */ Object zzk(zzgz zzgzVar) {
        return zzgzVar.zzf;
    }

    public static zzgz zzl(zzagk zzagkVar) {
        return new zzgz(new zzha(zzagkVar), zzaip.zza, zzb);
    }

    public static zzgz zzm(zzaiq zzaiqVar, Object obj, Object obj2) {
        return new zzgz(zzaiqVar, obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgu, com.google.android.gms.internal.ads.zzaiq
    public final zzaip zzf(int i, zzaip zzaipVar, long j) {
        this.zza.zzf(i, zzaipVar, j);
        if (zzamq.zzc(zzaipVar.zzb, this.zze)) {
            zzaipVar.zzb = zzaip.zza;
        }
        return zzaipVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgu, com.google.android.gms.internal.ads.zzaiq
    public final zzain zzh(int i, zzain zzainVar, boolean z) {
        this.zza.zzh(i, zzainVar, z);
        if (zzamq.zzc(zzainVar.zzb, this.zzf) && z) {
            zzainVar.zzb = zzb;
        }
        return zzainVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgu, com.google.android.gms.internal.ads.zzaiq
    public final int zzi(Object obj) {
        zzaiq zzaiqVar = this.zza;
        Object obj2 = obj;
        if (zzb.equals(obj)) {
            obj2 = this.zzf;
            if (obj2 == null) {
                obj2 = obj;
            }
        }
        return zzaiqVar.zzi(obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgu, com.google.android.gms.internal.ads.zzaiq
    public final Object zzj(int i) {
        Object zzj = this.zza.zzj(i);
        Object obj = zzj;
        if (zzamq.zzc(zzj, this.zzf)) {
            obj = zzb;
        }
        return obj;
    }

    public final zzgz zzn(zzaiq zzaiqVar) {
        return new zzgz(zzaiqVar, this.zze, this.zzf);
    }
}
