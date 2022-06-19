package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgep.class */
public final class zzgep extends zzgkl<zzgep, zzgeo> implements zzglw {
    private static final zzgep zzb;
    private int zze;
    private int zzf;
    private zzgjf zzg = zzgjf.zzb;

    static {
        zzgep zzgepVar = new zzgep();
        zzb = zzgepVar;
        zzgkl.zzaK(zzgep.class, zzgepVar);
    }

    private zzgep() {
    }

    public static zzgeo zza() {
        return zzb.zzat();
    }

    public static zzgep zzd() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgep();
            }
            if (i2 == 4) {
                return new zzgeo(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgjf zze() {
        return this.zzg;
    }

    public final int zzg() {
        int i = this.zze;
        int i2 = 5;
        if (i == 0) {
            i2 = 2;
        } else if (i == 2) {
            i2 = 4;
        } else if (i != 3) {
            i2 = i != 4 ? i != 5 ? 0 : 7 : 6;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzh() {
        int zzb2 = zzget.zzb(this.zzf);
        int i = zzb2;
        if (zzb2 == 0) {
            i = 1;
        }
        return i;
    }
}
