package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgdv.class */
public final class zzgdv extends zzgkl<zzgdv, zzgdu> implements zzglw {
    private static final zzgdv zzb;

    static {
        zzgdv zzgdvVar = new zzgdv();
        zzb = zzgdvVar;
        zzgkl.zzaK(zzgdv.class, zzgdvVar);
    }

    private zzgdv() {
    }

    public static zzgdv zzc() {
        return zzb;
    }

    public static zzgdv zzd(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgdv) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "����", null);
            }
            if (i2 == 3) {
                return new zzgdv();
            }
            if (i2 == 4) {
                return new zzgdu(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
