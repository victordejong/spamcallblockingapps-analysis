package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzes.class */
public final class zzes extends zzkd<zzes, zzer> implements zzlj {
    private static final zzes zzk;
    private int zza;
    private int zze;
    private String zzf = "";
    private zzel zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        zzes zzesVar = new zzes();
        zzk = zzesVar;
        zzkd.zzby(zzes.class, zzesVar);
    }

    private zzes() {
    }

    public static zzer zzi() {
        return zzk.zzbt();
    }

    public static /* synthetic */ void zzk(zzes zzesVar, String str) {
        zzesVar.zza |= 2;
        zzesVar.zzf = str;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final String zzc() {
        return this.zzf;
    }

    public final zzel zzd() {
        zzel zzelVar = this.zzg;
        zzel zzelVar2 = zzelVar;
        if (zzelVar == null) {
            zzelVar2 = zzel.zzi();
        }
        return zzelVar2;
    }

    public final boolean zze() {
        return this.zzh;
    }

    public final boolean zzf() {
        return this.zzi;
    }

    public final boolean zzg() {
        return (this.zza & 32) != 0;
    }

    public final boolean zzh() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001င��\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new zzes();
            }
            if (i2 == 4) {
                return new zzer(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }
}
