package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfe.class */
public final class zzfe extends zzkd<zzfe, zzfd> implements zzlj {
    private static final zzfe zzg;
    private int zza;
    private String zze = "";
    private String zzf = "";

    static {
        zzfe zzfeVar = new zzfe();
        zzg = zzfeVar;
        zzkd.zzby(zzfe.class, zzfeVar);
    }

    private zzfe() {
    }

    public final String zza() {
        return this.zze;
    }

    public final String zzb() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzfe();
            }
            if (i2 == 4) {
                return new zzfd(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
