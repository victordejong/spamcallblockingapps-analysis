package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzeb.class */
public final class zzeb extends zzhs<zzeb, zzea> implements zziy {
    private static final zzeb zzg;
    private int zza;
    private zzhz<zzeg> zze = zzbE();
    private zzdx zzf;

    static {
        zzeb zzebVar = new zzeb();
        zzg = zzebVar;
        zzhs.zzby(zzeb.class, zzebVar);
    }

    private zzeb() {
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\u001b\u0002ဉ��", new Object[]{"zza", "zze", zzeg.class, "zzf"});
            }
            if (i2 == 3) {
                return new zzeb();
            }
            if (i2 == 4) {
                return new zzea(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
