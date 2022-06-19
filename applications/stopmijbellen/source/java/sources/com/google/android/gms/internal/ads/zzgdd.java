package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgdd.class */
public final class zzgdd extends zzgkl<zzgdd, zzgdc> implements zzglw {
    private static final zzgdd zzb;
    private int zze;
    private int zzf;

    static {
        zzgdd zzgddVar = new zzgdd();
        zzb = zzgddVar;
        zzgkl.zzaK(zzgdd.class, zzgddVar);
    }

    private zzgdd() {
    }

    public static zzgdc zzc() {
        return zzb.zzat();
    }

    public static zzgdd zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgdd) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0002\u0003\u0002������\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgdd();
            }
            if (i2 == 4) {
                return new zzgdc(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
