package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq.class */
public final class zzfq extends zzjx implements zzld {
    private static final zzfq zza;
    private int zze;
    private String zzf = "";
    private long zzg;

    static {
        zzfq zzfqVar = new zzfq();
        zza = zzfqVar;
        zzjx.zzbE(zzfq.class, zzfqVar);
    }

    private zzfq() {
    }

    public static zzfp zza() {
        return (zzfp) zza.zzbs();
    }

    public static /* synthetic */ void zzc(zzfq zzfqVar, String str) {
        str.getClass();
        zzfqVar.zze |= 1;
        zzfqVar.zzf = str;
    }

    public static /* synthetic */ void zzd(zzfq zzfqVar, long j) {
        zzfqVar.zze |= 2;
        zzfqVar.zzg = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzfq();
            }
            if (i2 == 4) {
                return new zzfp(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
