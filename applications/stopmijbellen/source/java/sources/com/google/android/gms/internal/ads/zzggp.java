package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzggp.class */
public final class zzggp extends zzgkl<zzggp, zzggo> implements zzglw {
    private static final zzggp zzb;
    private int zze;
    private zzgjf zzf = zzgjf.zzb;

    static {
        zzggp zzggpVar = new zzggp();
        zzb = zzggpVar;
        zzgkl.zzaK(zzggp.class, zzggpVar);
    }

    private zzggp() {
    }

    public static zzggo zzc() {
        return zzb.zzat();
    }

    public static zzggp zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzggp) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
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
                return new zzggp();
            }
            if (i2 == 4) {
                return new zzggo(null);
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
