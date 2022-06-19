package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeq.class */
public final class zzeq extends zzkd<zzeq, zzem> implements zzlj {
    private static final zzeq zzj;
    private int zza;
    private int zze;
    private boolean zzf;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzeq zzeqVar = new zzeq();
        zzj = zzeqVar;
        zzkd.zzby(zzeq.class, zzeqVar);
    }

    private zzeq() {
    }

    public static zzeq zzk() {
        return zzj;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final zzep zzb() {
        zzep zza = zzep.zza(this.zze);
        zzep zzepVar = zza;
        if (zza == null) {
            zzepVar = zzep.UNKNOWN_COMPARISON_TYPE;
        }
        return zzepVar;
    }

    public final boolean zzc() {
        return (this.zza & 2) != 0;
    }

    public final boolean zzd() {
        return this.zzf;
    }

    public final boolean zze() {
        return (this.zza & 4) != 0;
    }

    public final String zzf() {
        return this.zzg;
    }

    public final boolean zzg() {
        return (this.zza & 8) != 0;
    }

    public final String zzh() {
        return this.zzh;
    }

    public final boolean zzi() {
        return (this.zza & 16) != 0;
    }

    public final String zzj() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zza", "zze", zzep.zzb(), "zzf", "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzeq();
            } else {
                if (i2 == 4) {
                    return new zzem(null);
                }
                if (i2 == 5) {
                    return zzj;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
