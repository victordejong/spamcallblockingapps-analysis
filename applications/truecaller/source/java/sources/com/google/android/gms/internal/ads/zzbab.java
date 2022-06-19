package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbab.class */
public final class zzbab extends zzgga<zzbab, zzbaa> implements zzghj {
    private static final zzbab zzh;
    private int zzb;
    private String zze = "";
    private zzggj<zzazz> zzf = zzgga.zzaE();
    private int zzg;

    static {
        zzbab zzbabVar = new zzbab();
        zzh = zzbabVar;
        zzgga.zzay(zzbab.class, zzbabVar);
    }

    private zzbab() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001", new Object[]{"zzb", "zze", "zzf", zzazz.class, "zzg", zzbam.zza});
            } else if (i2 == 3) {
                return new zzbab();
            } else {
                if (i2 == 4) {
                    return new zzbaa(null);
                }
                if (i2 == 5) {
                    return zzh;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
