package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfu.class */
public final class zzfu extends zzjx implements zzld {
    private static final zzfu zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private zzfi zzh;

    static {
        zzfu zzfuVar = new zzfu();
        zza = zzfuVar;
        zzjx.zzbE(zzfu.class, zzfuVar);
    }

    private zzfu() {
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzfu();
            }
            if (i2 == 4) {
                return new zzft(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
