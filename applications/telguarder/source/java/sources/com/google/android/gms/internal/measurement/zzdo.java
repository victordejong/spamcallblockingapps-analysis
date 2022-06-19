package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdo.class */
public final class zzdo extends zzhs<zzdo, zzdk> implements zziy {
    private static final zzdo zzg;
    private int zza;
    private int zze = 1;
    private zzhz<zzdd> zzf = zzbE();

    static {
        zzdo zzdoVar = new zzdo();
        zzg = zzdoVar;
        zzhs.zzby(zzdo.class, zzdoVar);
    }

    private zzdo() {
    }

    public static zzdk zza() {
        return zzg.zzbt();
    }

    public static /* synthetic */ void zzc(zzdo zzdoVar, zzdd zzddVar) {
        zzddVar.getClass();
        zzhz<zzdd> zzhzVar = zzdoVar.zzf;
        if (!zzhzVar.zza()) {
            zzdoVar.zzf = zzhs.zzbF(zzhzVar);
        }
        zzdoVar.zzf.add(zzddVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zza", "zze", zzdn.zzb(), "zzf", zzdd.class});
            } else if (i2 == 3) {
                return new zzdo();
            } else {
                if (i2 == 4) {
                    return new zzdk(null);
                }
                if (i2 == 5) {
                    return zzg;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
