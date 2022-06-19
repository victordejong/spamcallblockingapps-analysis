package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgdm.class */
public final class zzgdm extends zzgkl<zzgdm, zzgdl> implements zzglw {
    private static final zzgdm zzb;
    private int zze;
    private zzgjf zzf = zzgjf.zzb;

    static {
        zzgdm zzgdmVar = new zzgdm();
        zzb = zzgdmVar;
        zzgkl.zzaK(zzgdm.class, zzgdmVar);
    }

    private zzgdm() {
    }

    public static zzgdl zzc() {
        return zzb.zzat();
    }

    public static zzgdm zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgdm) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
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
                return new zzgdm();
            }
            if (i2 == 4) {
                return new zzgdl(null);
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
