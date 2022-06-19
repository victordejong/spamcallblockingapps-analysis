package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcr.class */
public final class zzcr extends zzhs<zzcr, zzcq> implements zziy {
    private static final zzcr zzg;
    private int zza;
    private String zze = "";
    private String zzf = "";

    static {
        zzcr zzcrVar = new zzcr();
        zzg = zzcrVar;
        zzhs.zzby(zzcr.class, zzcrVar);
    }

    private zzcr() {
    }

    public final String zza() {
        return this.zze;
    }

    public final String zzb() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzcr();
            }
            if (i2 == 4) {
                return new zzcq(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
