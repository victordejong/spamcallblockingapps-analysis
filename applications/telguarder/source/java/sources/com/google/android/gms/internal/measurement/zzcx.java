package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcx.class */
public final class zzcx extends zzhs<zzcx, zzcw> implements zziy {
    private static final zzcx zzi;
    private int zza;
    private int zze;
    private zzdq zzf;
    private zzdq zzg;
    private boolean zzh;

    static {
        zzcx zzcxVar = new zzcx();
        zzi = zzcxVar;
        zzhs.zzby(zzcx.class, zzcxVar);
    }

    private zzcx() {
    }

    public static zzcw zzh() {
        return zzi.zzbt();
    }

    public static /* synthetic */ void zzj(zzcx zzcxVar, int i) {
        zzcxVar.zza |= 1;
        zzcxVar.zze = i;
    }

    public static /* synthetic */ void zzk(zzcx zzcxVar, zzdq zzdqVar) {
        zzdqVar.getClass();
        zzcxVar.zzf = zzdqVar;
        zzcxVar.zza |= 2;
    }

    public static /* synthetic */ void zzm(zzcx zzcxVar, zzdq zzdqVar) {
        zzcxVar.zzg = zzdqVar;
        zzcxVar.zza |= 4;
    }

    public static /* synthetic */ void zzn(zzcx zzcxVar, boolean z) {
        zzcxVar.zza |= 8;
        zzcxVar.zzh = z;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final zzdq zzc() {
        zzdq zzdqVar = this.zzf;
        zzdq zzdqVar2 = zzdqVar;
        if (zzdqVar == null) {
            zzdqVar2 = zzdq.zzm();
        }
        return zzdqVar2;
    }

    public final boolean zzd() {
        return (this.zza & 4) != 0;
    }

    public final zzdq zze() {
        zzdq zzdqVar = this.zzg;
        zzdq zzdqVar2 = zzdqVar;
        if (zzdqVar == null) {
            zzdqVar2 = zzdq.zzm();
        }
        return zzdqVar2;
    }

    public final boolean zzf() {
        return (this.zza & 8) != 0;
    }

    public final boolean zzg() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzcx();
            }
            if (i2 == 4) {
                return new zzcw(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
