package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq.class */
public final class zzfq extends zzkd<zzfq, zzfp> implements zzlj {
    private static final zzfq zzg;
    private int zza;
    private String zze = "";
    private long zzf;

    static {
        zzfq zzfqVar = new zzfq();
        zzg = zzfqVar;
        zzkd.zzby(zzfq.class, zzfqVar);
    }

    private zzfq() {
    }

    public static zzfp zza() {
        return zzg.zzbt();
    }

    public static /* synthetic */ void zzc(zzfq zzfqVar, String str) {
        Objects.requireNonNull(str);
        zzfqVar.zza |= 1;
        zzfqVar.zze = str;
    }

    public static /* synthetic */ void zzd(zzfq zzfqVar, long j) {
        zzfqVar.zza |= 2;
        zzfqVar.zzf = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzfq();
            }
            if (i2 == 4) {
                return new zzfp(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
