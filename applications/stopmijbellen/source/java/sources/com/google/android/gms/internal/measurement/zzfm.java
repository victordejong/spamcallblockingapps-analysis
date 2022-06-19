package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfm.class */
public final class zzfm extends zzkd<zzfm, zzfl> implements zzlj {
    private static final zzfm zzg;
    private int zza;
    private int zze;
    private long zzf;

    static {
        zzfm zzfmVar = new zzfm();
        zzg = zzfmVar;
        zzkd.zzby(zzfm.class, zzfmVar);
    }

    private zzfm() {
    }

    public static zzfl zze() {
        return zzg.zzbt();
    }

    public static /* synthetic */ void zzg(zzfm zzfmVar, int i) {
        zzfmVar.zza |= 1;
        zzfmVar.zze = i;
    }

    public static /* synthetic */ void zzh(zzfm zzfmVar, long j) {
        zzfmVar.zza |= 2;
        zzfmVar.zzf = j;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final boolean zzc() {
        return (this.zza & 2) != 0;
    }

    public final long zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzfm();
            }
            if (i2 == 4) {
                return new zzfl(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
