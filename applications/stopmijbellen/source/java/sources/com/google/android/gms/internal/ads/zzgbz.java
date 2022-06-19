package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbz.class */
public final class zzgbz extends zzgkl<zzgbz, zzgby> implements zzglw {
    private static final zzgbz zzb;
    private int zze;

    static {
        zzgbz zzgbzVar = new zzgbz();
        zzb = zzgbzVar;
        zzgkl.zzaK(zzgbz.class, zzgbzVar);
    }

    private zzgbz() {
    }

    public static zzgby zzc() {
        return zzb.zzat();
    }

    public static zzgbz zze() {
        return zzb;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zze"});
            }
            if (i2 == 3) {
                return new zzgbz();
            }
            if (i2 == 4) {
                return new zzgby(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
