package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgff.class */
public final class zzgff extends zzgkl<zzgff, zzgfe> implements zzglw {
    private static final zzgff zzb;
    private String zze = "";
    private zzgjf zzf = zzgjf.zzb;
    private int zzg;

    static {
        zzgff zzgffVar = new zzgff();
        zzb = zzgffVar;
        zzgkl.zzaK(zzgff.class, zzgffVar);
    }

    private zzgff() {
    }

    public static zzgfe zza() {
        return zzb.zzat();
    }

    public static zzgff zzd() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgff();
            }
            if (i2 == 4) {
                return new zzgfe(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgjf zze() {
        return this.zzf;
    }

    public final String zzf() {
        return this.zze;
    }

    public final int zzi() {
        int i = this.zzg;
        int i2 = 4;
        if (i == 0) {
            i2 = 2;
        } else if (i == 1) {
            i2 = 3;
        } else if (i != 2) {
            i2 = i != 3 ? i != 4 ? 0 : 6 : 5;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
