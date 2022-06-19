package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkf.class */
public final class zzgkf extends zzgga<zzgkf, zzgke> implements zzghj {
    private static final zzgkf zzh;
    private int zzb;
    private String zze = "";
    private long zzf;
    private boolean zzg;

    static {
        zzgkf zzgkfVar = new zzgkf();
        zzh = zzgkfVar;
        zzgga.zzay(zzgkf.class, zzgkfVar);
    }

    private zzgkf() {
    }

    public static zzgke zza() {
        return zzh.zzas();
    }

    public static /* synthetic */ void zzd(zzgkf zzgkfVar, String str) {
        zzgkfVar.zzb |= 1;
        zzgkfVar.zze = str;
    }

    public static /* synthetic */ void zze(zzgkf zzgkfVar, long j) {
        zzgkfVar.zzb |= 2;
        zzgkfVar.zzf = j;
    }

    public static /* synthetic */ void zzf(zzgkf zzgkfVar, boolean z) {
        zzgkfVar.zzb |= 4;
        zzgkfVar.zzg = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgkf();
            }
            if (i2 == 4) {
                return new zzgke(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
