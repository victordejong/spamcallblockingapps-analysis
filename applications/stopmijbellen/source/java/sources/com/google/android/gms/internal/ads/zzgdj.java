package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgdj.class */
public final class zzgdj extends zzgkl<zzgdj, zzgdi> implements zzglw {
    private static final zzgdj zzb;
    private int zze;
    private int zzf;

    static {
        zzgdj zzgdjVar = new zzgdj();
        zzb = zzgdjVar;
        zzgkl.zzaK(zzgdj.class, zzgdjVar);
    }

    private zzgdj() {
    }

    public static zzgdi zzc() {
        return zzb.zzat();
    }

    public static zzgdj zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgdj) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\u000b", new Object[]{"zzf", "zze"});
            }
            if (i2 == 3) {
                return new zzgdj();
            }
            if (i2 == 4) {
                return new zzgdi(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
