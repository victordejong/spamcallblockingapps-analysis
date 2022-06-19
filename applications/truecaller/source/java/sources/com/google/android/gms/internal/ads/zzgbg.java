package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgbg.class */
public final class zzgbg extends zzgga<zzgbg, zzgbf> implements zzghj {
    private static final zzgbg zzh;
    private String zzb = "";
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzgbg zzgbgVar = new zzgbg();
        zzh = zzgbgVar;
        zzgga.zzay(zzgbg.class, zzgbgVar);
    }

    private zzgbg() {
    }

    public static zzgbf zza() {
        return zzh.zzas();
    }

    public static /* synthetic */ void zzd(zzgbg zzgbgVar, String str) {
        str.getClass();
        zzgbgVar.zzb = str;
    }

    public static /* synthetic */ void zzf(zzgbg zzgbgVar, int i) {
        if (i != 1) {
            zzgbgVar.zze = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgbg();
            }
            if (i2 == 4) {
                return new zzgbf(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
