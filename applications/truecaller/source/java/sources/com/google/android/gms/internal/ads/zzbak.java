package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbak.class */
public final class zzbak extends zzgga<zzbak, zzbai> implements zzghj {
    private static final zzbak zzi;
    private int zzb;
    private int zze;
    private zzbbz zzf;
    private String zzg = "";
    private String zzh = "";

    static {
        zzbak zzbakVar = new zzbak();
        zzi = zzbakVar;
        zzgga.zzay(zzbak.class, zzbakVar);
    }

    private zzbak() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzi, "\u0001\u0004��\u0001\u0005\b\u0004������\u0005ဌ��\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzb", "zze", zzbaj.zza, "zzf", "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzbak();
            } else {
                if (i2 == 4) {
                    return new zzbai(null);
                }
                if (i2 == 5) {
                    return zzi;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
