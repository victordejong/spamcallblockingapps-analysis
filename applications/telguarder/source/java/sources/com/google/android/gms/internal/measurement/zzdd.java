package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdd.class */
public final class zzdd extends zzhs<zzdd, zzdc> implements zziy {
    private static final zzdd zzg;
    private int zza;
    private String zze = "";
    private long zzf;

    static {
        zzdd zzddVar = new zzdd();
        zzg = zzddVar;
        zzhs.zzby(zzdd.class, zzddVar);
    }

    private zzdd() {
    }

    public static zzdc zza() {
        return zzg.zzbt();
    }

    public static /* synthetic */ void zzc(zzdd zzddVar, String str) {
        str.getClass();
        zzddVar.zza |= 1;
        zzddVar.zze = str;
    }

    public static /* synthetic */ void zzd(zzdd zzddVar, long j) {
        zzddVar.zza |= 2;
        zzddVar.zzf = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzdd();
            }
            if (i2 == 4) {
                return new zzdc(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
