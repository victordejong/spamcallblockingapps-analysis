package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgds.class */
public final class zzgds extends zzgkl<zzgds, zzgdr> implements zzglw {
    private static final zzgds zzb;
    private int zze;
    private zzgjf zzf = zzgjf.zzb;

    static {
        zzgds zzgdsVar = new zzgds();
        zzb = zzgdsVar;
        zzgkl.zzaK(zzgds.class, zzgdsVar);
    }

    private zzgds() {
    }

    public static zzgdr zzc() {
        return zzb.zzat();
    }

    public static zzgds zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgds) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgds();
            }
            if (i2 == 4) {
                return new zzgdr(null);
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
