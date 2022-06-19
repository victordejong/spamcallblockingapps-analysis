package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdz.class */
public final class zzdz extends zzhs<zzdz, zzdy> implements zziy {
    private static final zzdz zzg;
    private int zza;
    private String zze = "";
    private zzhz<zzeg> zzf = zzbE();

    static {
        zzdz zzdzVar = new zzdz();
        zzg = zzdzVar;
        zzhs.zzby(zzdz.class, zzdzVar);
    }

    private zzdz() {
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဈ��\u0002\u001b", new Object[]{"zza", "zze", "zzf", zzeg.class});
            }
            if (i2 == 3) {
                return new zzdz();
            }
            if (i2 == 4) {
                return new zzdy(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
