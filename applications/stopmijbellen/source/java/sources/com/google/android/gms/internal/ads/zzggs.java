package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzggs.class */
public final class zzggs extends zzgkl<zzggs, zzggr> implements zzglw {
    private static final zzggs zzb;
    private int zze;

    static {
        zzggs zzggsVar = new zzggs();
        zzb = zzggsVar;
        zzgkl.zzaK(zzggs.class, zzggsVar);
    }

    private zzggs() {
    }

    public static zzggs zzc() {
        return zzb;
    }

    public static zzggs zzd(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzggs) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zze"});
            }
            if (i2 == 3) {
                return new zzggs();
            }
            if (i2 == 4) {
                return new zzggr(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
