package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgdp.class */
public final class zzgdp extends zzgkl<zzgdp, zzgdo> implements zzglw {
    private static final zzgdp zzb;
    private int zze;
    private int zzf;

    static {
        zzgdp zzgdpVar = new zzgdp();
        zzb = zzgdpVar;
        zzgkl.zzaK(zzgdp.class, zzgdpVar);
    }

    private zzgdp() {
    }

    public static zzgdo zzc() {
        return zzb.zzat();
    }

    public static zzgdp zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgdp) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\u000b", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgdp();
            }
            if (i2 == 4) {
                return new zzgdo(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
