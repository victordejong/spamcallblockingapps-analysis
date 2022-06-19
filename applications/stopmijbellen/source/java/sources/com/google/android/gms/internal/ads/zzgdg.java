package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgdg.class */
public final class zzgdg extends zzgkl<zzgdg, zzgdf> implements zzglw {
    private static final zzgdg zzb;
    private int zze;
    private zzgjf zzf = zzgjf.zzb;

    static {
        zzgdg zzgdgVar = new zzgdg();
        zzb = zzgdgVar;
        zzgkl.zzaK(zzgdg.class, zzgdgVar);
    }

    private zzgdg() {
    }

    public static zzgdf zzc() {
        return zzb.zzat();
    }

    public static zzgdg zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgdg) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgdg();
            }
            if (i2 == 4) {
                return new zzgdf(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgjf zzf() {
        return this.zzf;
    }
}
