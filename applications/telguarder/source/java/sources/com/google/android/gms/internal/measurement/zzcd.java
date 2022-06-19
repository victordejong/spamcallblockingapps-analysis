package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd.class */
public final class zzcd extends zzhs<zzcd, zzbz> implements zziy {
    private static final zzcd zzj;
    private int zza;
    private int zze;
    private boolean zzf;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzcd zzcdVar = new zzcd();
        zzj = zzcdVar;
        zzhs.zzby(zzcd.class, zzcdVar);
    }

    private zzcd() {
    }

    public static zzcd zzk() {
        return zzj;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final zzcc zzb() {
        zzcc zza = zzcc.zza(this.zze);
        zzcc zzccVar = zza;
        if (zza == null) {
            zzccVar = zzcc.UNKNOWN_COMPARISON_TYPE;
        }
        return zzccVar;
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

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zza", "zze", zzcc.zzb(), "zzf", "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzcd();
            } else {
                if (i2 == 4) {
                    return new zzbz(null);
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
