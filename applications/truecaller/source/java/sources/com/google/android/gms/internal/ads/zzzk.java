package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzk.class */
public final class zzzk extends zzgga<zzzk, zzzj> implements zzghj {
    private static final zzzk zzf;
    private int zzb;
    private String zze = "";

    static {
        zzzk zzzkVar = new zzzk();
        zzf = zzzkVar;
        zzgga.zzay(zzzk.class, zzzkVar);
    }

    private zzzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzzk();
            }
            if (i2 == 4) {
                return new zzzj(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }
}
