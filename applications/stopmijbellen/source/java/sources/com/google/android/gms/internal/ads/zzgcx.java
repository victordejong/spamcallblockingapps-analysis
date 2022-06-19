package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgcx.class */
public final class zzgcx extends zzgkl<zzgcx, zzgcw> implements zzglw {
    private static final zzgcx zzb;
    private int zze;

    static {
        zzgcx zzgcxVar = new zzgcx();
        zzb = zzgcxVar;
        zzgkl.zzaK(zzgcx.class, zzgcxVar);
    }

    private zzgcx() {
    }

    public static zzgcw zzc() {
        return zzb.zzat();
    }

    public static zzgcx zze() {
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
                return new zzgcx();
            }
            if (i2 == 4) {
                return new zzgcw(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
