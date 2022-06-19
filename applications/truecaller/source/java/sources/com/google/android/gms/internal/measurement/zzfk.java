package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfk.class */
public final class zzfk extends zzjx implements zzld {
    private static final zzfk zza;
    private int zze;
    private int zzf;
    private zzgd zzg;
    private zzgd zzh;
    private boolean zzi;

    static {
        zzfk zzfkVar = new zzfk();
        zza = zzfkVar;
        zzjx.zzbE(zzfk.class, zzfkVar);
    }

    private zzfk() {
    }

    public static zzfj zzb() {
        return (zzfj) zza.zzbs();
    }

    public static /* synthetic */ void zzf(zzfk zzfkVar, int i) {
        zzfkVar.zze |= 1;
        zzfkVar.zzf = i;
    }

    public static /* synthetic */ void zzg(zzfk zzfkVar, zzgd zzgdVar) {
        zzgdVar.getClass();
        zzfkVar.zzg = zzgdVar;
        zzfkVar.zze |= 2;
    }

    public static /* synthetic */ void zzh(zzfk zzfkVar, zzgd zzgdVar) {
        zzfkVar.zzh = zzgdVar;
        zzfkVar.zze |= 4;
    }

    public static /* synthetic */ void zzi(zzfk zzfkVar, boolean z) {
        zzfkVar.zze |= 8;
        zzfkVar.zzi = z;
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzgd zzd() {
        zzgd zzgdVar = this.zzg;
        zzgd zzgdVar2 = zzgdVar;
        if (zzgdVar == null) {
            zzgdVar2 = zzgd.zzh();
        }
        return zzgdVar2;
    }

    public final zzgd zze() {
        zzgd zzgdVar = this.zzh;
        zzgd zzgdVar2 = zzgdVar;
        if (zzgdVar == null) {
            zzgdVar2 = zzgd.zzh();
        }
        return zzgdVar2;
    }

    public final boolean zzj() {
        return this.zzi;
    }

    public final boolean zzk() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzfk();
            }
            if (i2 == 4) {
                return new zzfj(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }

    public final boolean zzm() {
        return (this.zze & 8) != 0;
    }

    public final boolean zzn() {
        return (this.zze & 4) != 0;
    }
}
