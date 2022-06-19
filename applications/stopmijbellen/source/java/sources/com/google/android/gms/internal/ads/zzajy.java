package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajy.class */
public final class zzajy extends zzgkl<zzajy, zzajx> implements zzglw {
    private static final zzajy zzb;
    private int zze;
    private long zzf;
    private String zzg = "";
    private zzgjf zzh = zzgjf.zzb;

    static {
        zzajy zzajyVar = new zzajy();
        zzb = zzajyVar;
        zzgkl.zzaK(zzajy.class, zzajyVar);
    }

    private zzajy() {
    }

    public static zzajy zzd() {
        return zzb;
    }

    public final long zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0004\u0003������\u0001ဂ��\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzajy();
            }
            if (i2 == 4) {
                return new zzajx(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final boolean zze() {
        return (this.zze & 1) != 0;
    }
}
