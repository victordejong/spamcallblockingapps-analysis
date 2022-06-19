package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbad.class */
public final class zzbad extends zzgga<zzbad, zzbac> implements zzghj {
    private static final zzbad zzj;
    private int zzb;
    private String zze = "";
    private zzggj<zzazz> zzf = zzgga.zzaE();
    private int zzg = 1000;
    private int zzh = 1000;
    private int zzi = 1000;

    static {
        zzbad zzbadVar = new zzbad();
        zzj = zzbadVar;
        zzgga.zzay(zzbad.class, zzbadVar);
    }

    private zzbad() {
    }

    public static zzbad zza() {
        return zzj;
    }

    public static /* synthetic */ void zzd(zzbad zzbadVar, String str) {
        str.getClass();
        zzbadVar.zzb |= 1;
        zzbadVar.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgge zzggeVar = zzbam.zza;
                return zzgga.zzaz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzb", "zze", "zzf", zzazz.class, "zzg", zzggeVar, "zzh", zzggeVar, "zzi", zzggeVar});
            } else if (i2 == 3) {
                return new zzbad();
            } else {
                if (i2 == 4) {
                    return new zzbac(null);
                }
                if (i2 == 5) {
                    return zzj;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
