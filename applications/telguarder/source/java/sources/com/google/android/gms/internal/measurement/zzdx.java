package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdx.class */
public final class zzdx extends zzhs<zzdx, zzdw> implements zziy {
    private static final zzdx zze;
    private zzhz<zzdz> zza = zzbE();

    static {
        zzdx zzdxVar = new zzdx();
        zze = zzdxVar;
        zzhs.zzby(zzdx.class, zzdxVar);
    }

    private zzdx() {
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", zzdz.class});
            }
            if (i2 == 3) {
                return new zzdx();
            }
            if (i2 == 4) {
                return new zzdw(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
