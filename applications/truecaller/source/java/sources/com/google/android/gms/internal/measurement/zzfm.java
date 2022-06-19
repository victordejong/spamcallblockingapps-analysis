package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfm.class */
public final class zzfm extends zzjx implements zzld {
    private static final zzfm zza;
    private int zze;
    private int zzf;
    private long zzg;

    static {
        zzfm zzfmVar = new zzfm();
        zza = zzfmVar;
        zzjx.zzbE(zzfm.class, zzfmVar);
    }

    private zzfm() {
    }

    public static zzfl zzc() {
        return (zzfl) zza.zzbs();
    }

    public static /* synthetic */ void zze(zzfm zzfmVar, int i) {
        zzfmVar.zze |= 1;
        zzfmVar.zzf = i;
    }

    public static /* synthetic */ void zzf(zzfm zzfmVar, long j) {
        zzfmVar.zze |= 2;
        zzfmVar.zzg = j;
    }

    public final int zza() {
        return this.zzf;
    }

    public final long zzb() {
        return this.zzg;
    }

    public final boolean zzg() {
        return (this.zze & 2) != 0;
    }

    public final boolean zzh() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzfm();
            }
            if (i2 == 4) {
                return new zzfl(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
