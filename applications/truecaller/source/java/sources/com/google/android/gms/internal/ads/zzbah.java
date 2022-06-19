package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbah.class */
public final class zzbah extends zzgga<zzbah, zzbag> implements zzghj {
    private static final zzbah zzm;
    private int zzb;
    private zzbbx zzf;
    private int zzg;
    private zzbbz zzh;
    private int zzi;
    private String zze = "";
    private int zzj = 1000;
    private int zzk = 1000;
    private int zzl = 1000;

    static {
        zzbah zzbahVar = new zzbah();
        zzm = zzbahVar;
        zzgga.zzay(zzbah.class, zzbahVar);
    }

    private zzbah() {
    }

    public static zzbah zza() {
        return zzm;
    }

    public static /* synthetic */ void zzd(zzbah zzbahVar, String str) {
        zzbahVar.zzb |= 1;
        zzbahVar.zze = str;
    }

    public static /* synthetic */ void zze(zzbah zzbahVar, zzbbz zzbbzVar) {
        zzbbzVar.getClass();
        zzbahVar.zzh = zzbbzVar;
        zzbahVar.zzb |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgge zzggeVar = zzbam.zza;
                return zzgga.zzaz(zzm, "\u0001\b��\u0001\u0001\b\b������\u0001ဈ��\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzggeVar, "zzk", zzggeVar, "zzl", zzggeVar});
            } else if (i2 == 3) {
                return new zzbah();
            } else {
                if (i2 == 4) {
                    return new zzbag(null);
                }
                if (i2 == 5) {
                    return zzm;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
