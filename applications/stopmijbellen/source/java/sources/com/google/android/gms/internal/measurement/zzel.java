package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzel.class */
public final class zzel extends zzkd<zzel, zzek> implements zzlj {
    private static final zzel zzi;
    private int zza;
    private zzex zze;
    private zzeq zzf;
    private boolean zzg;
    private String zzh = "";

    static {
        zzel zzelVar = new zzel();
        zzi = zzelVar;
        zzkd.zzby(zzel.class, zzelVar);
    }

    private zzel() {
    }

    public static zzel zzi() {
        return zzi;
    }

    public static /* synthetic */ void zzk(zzel zzelVar, String str) {
        zzelVar.zza |= 8;
        zzelVar.zzh = str;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final zzex zzb() {
        zzex zzexVar = this.zze;
        zzex zzexVar2 = zzexVar;
        if (zzexVar == null) {
            zzexVar2 = zzex.zzi();
        }
        return zzexVar2;
    }

    public final boolean zzc() {
        return (this.zza & 2) != 0;
    }

    public final zzeq zzd() {
        zzeq zzeqVar = this.zzf;
        zzeq zzeqVar2 = zzeqVar;
        if (zzeqVar == null) {
            zzeqVar2 = zzeq.zzk();
        }
        return zzeqVar2;
    }

    public final boolean zze() {
        return (this.zza & 4) != 0;
    }

    public final boolean zzf() {
        return this.zzg;
    }

    public final boolean zzg() {
        return (this.zza & 8) != 0;
    }

    public final String zzh() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzel();
            }
            if (i2 == 4) {
                return new zzek(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
