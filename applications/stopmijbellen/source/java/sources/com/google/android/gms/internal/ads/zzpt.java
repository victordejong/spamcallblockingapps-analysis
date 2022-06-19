package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpt.class */
public final class zzpt extends zzpo {
    public static final Object zzd = new Object();
    private final Object zze;
    private final Object zzf;

    private zzpt(zzcd zzcdVar, Object obj, Object obj2) {
        super(zzcdVar);
        this.zze = obj;
        this.zzf = obj2;
    }

    public static zzpt zzq(zzaz zzazVar) {
        return new zzpt(new zzpu(zzazVar), zzcc.zza, zzd);
    }

    public static zzpt zzr(zzcd zzcdVar, Object obj, Object obj2) {
        return new zzpt(zzcdVar, obj, obj2);
    }

    public static /* bridge */ /* synthetic */ Object zzs(zzpt zzptVar) {
        return zzptVar.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzpo, com.google.android.gms.internal.ads.zzcd
    public final int zza(Object obj) {
        zzcd zzcdVar = this.zzc;
        Object obj2 = obj;
        if (zzd.equals(obj)) {
            obj2 = this.zzf;
            if (obj2 == null) {
                obj2 = obj;
            }
        }
        return zzcdVar.zza(obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzpo, com.google.android.gms.internal.ads.zzcd
    public final zzca zzd(int i, zzca zzcaVar, boolean z) {
        this.zzc.zzd(i, zzcaVar, z);
        if (zzfn.zzP(zzcaVar.zzc, this.zzf) && z) {
            zzcaVar.zzc = zzd;
        }
        return zzcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpo, com.google.android.gms.internal.ads.zzcd
    public final zzcc zze(int i, zzcc zzccVar, long j) {
        this.zzc.zze(i, zzccVar, j);
        if (zzfn.zzP(zzccVar.zzc, this.zze)) {
            zzccVar.zzc = zzcc.zza;
        }
        return zzccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpo, com.google.android.gms.internal.ads.zzcd
    public final Object zzf(int i) {
        Object zzf = this.zzc.zzf(i);
        Object obj = zzf;
        if (zzfn.zzP(zzf, this.zzf)) {
            obj = zzd;
        }
        return obj;
    }

    public final zzpt zzp(zzcd zzcdVar) {
        return new zzpt(zzcdVar, this.zze, this.zzf);
    }
}
