package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzeg.class */
public final class zzeg extends zzhs<zzeg, zzec> implements zziy {
    private static final zzeg zzk;
    private int zza;
    private int zze;
    private zzhz<zzeg> zzf = zzbE();
    private String zzg = "";
    private String zzh = "";
    private boolean zzi;
    private double zzj;

    static {
        zzeg zzegVar = new zzeg();
        zzk = zzegVar;
        zzhs.zzby(zzeg.class, zzegVar);
    }

    private zzeg() {
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဌ��\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zza", "zze", zzef.zzb(), "zzf", zzeg.class, "zzg", "zzh", "zzi", "zzj"});
            } else if (i2 == 3) {
                return new zzeg();
            } else {
                if (i2 == 4) {
                    return new zzec(null);
                }
                if (i2 == 5) {
                    return zzk;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
