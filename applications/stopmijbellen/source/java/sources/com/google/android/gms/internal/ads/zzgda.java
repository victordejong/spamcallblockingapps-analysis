package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgda.class */
public final class zzgda extends zzgkl<zzgda, zzgcz> implements zzglw {
    private static final zzgda zzb;
    private int zze;
    private zzgjf zzf = zzgjf.zzb;

    static {
        zzgda zzgdaVar = new zzgda();
        zzb = zzgdaVar;
        zzgkl.zzaK(zzgda.class, zzgdaVar);
    }

    private zzgda() {
    }

    public static zzgcz zzc() {
        return zzb.zzat();
    }

    public static zzgda zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgda) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
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
                return new zzgda();
            }
            if (i2 == 4) {
                return new zzgcz(null);
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
