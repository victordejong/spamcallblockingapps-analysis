package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzel.class */
public final class zzel extends zzjx implements zzld {
    private static final zzel zza;
    private int zze;
    private zzex zzf;
    private zzeq zzg;
    private boolean zzh;
    private String zzi = "";

    static {
        zzel zzelVar = new zzel();
        zza = zzelVar;
        zzjx.zzbE(zzel.class, zzelVar);
    }

    private zzel() {
    }

    public static zzel zzb() {
        return zza;
    }

    public static /* synthetic */ void zzf(zzel zzelVar, String str) {
        zzelVar.zze |= 8;
        zzelVar.zzi = str;
    }

    public final zzeq zzc() {
        zzeq zzeqVar = this.zzg;
        zzeq zzeqVar2 = zzeqVar;
        if (zzeqVar == null) {
            zzeqVar2 = zzeq.zzb();
        }
        return zzeqVar2;
    }

    public final zzex zzd() {
        zzex zzexVar = this.zzf;
        zzex zzexVar2 = zzexVar;
        if (zzexVar == null) {
            zzexVar2 = zzex.zzc();
        }
        return zzexVar2;
    }

    public final String zze() {
        return this.zzi;
    }

    public final boolean zzg() {
        return this.zzh;
    }

    public final boolean zzh() {
        return (this.zze & 4) != 0;
    }

    public final boolean zzi() {
        return (this.zze & 2) != 0;
    }

    public final boolean zzj() {
        return (this.zze & 8) != 0;
    }

    public final boolean zzk() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzel();
            }
            if (i2 == 4) {
                return new zzek(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
