package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzggb.class */
public final class zzggb extends zzgkl<zzggb, zzgga> implements zzglw {
    private static final zzggb zzb;
    private String zze = "";

    static {
        zzggb zzggbVar = new zzggb();
        zzb = zzggbVar;
        zzgkl.zzaK(zzggb.class, zzggbVar);
    }

    private zzggb() {
    }

    public static zzggb zzc() {
        return zzb;
    }

    public static zzggb zzd(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzggb) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zze"});
            }
            if (i2 == 3) {
                return new zzggb();
            }
            if (i2 == 4) {
                return new zzgga(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final String zze() {
        return this.zze;
    }
}
