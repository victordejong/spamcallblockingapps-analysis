package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgco.class */
public final class zzgco extends zzgkl<zzgco, zzgcn> implements zzglw {
    private static final zzgco zzb;
    private int zze;

    static {
        zzgco zzgcoVar = new zzgco();
        zzb = zzgcoVar;
        zzgkl.zzaK(zzgco.class, zzgcoVar);
    }

    private zzgco() {
    }

    public static zzgcn zzc() {
        return zzb.zzat();
    }

    public static zzgco zze() {
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
                return new zzgco();
            }
            if (i2 == 4) {
                return new zzgcn(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
