package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgfp.class */
public final class zzgfp extends zzgkl<zzgfp, zzgfo> implements zzglw {
    private static final zzgfp zzb;
    private zzgff zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzgfp zzgfpVar = new zzgfp();
        zzb = zzgfpVar;
        zzgkl.zzaK(zzgfp.class, zzgfpVar);
    }

    private zzgfp() {
    }

    public final int zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzgfp();
            }
            if (i2 == 4) {
                return new zzgfo(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgff zzc() {
        zzgff zzgffVar = this.zze;
        zzgff zzgffVar2 = zzgffVar;
        if (zzgffVar == null) {
            zzgffVar2 = zzgff.zzd();
        }
        return zzgffVar2;
    }

    public final boolean zze() {
        return this.zze != null;
    }

    public final int zzf() {
        int i = this.zzf;
        int i2 = 3;
        if (i == 0) {
            i2 = 2;
        } else if (i != 1) {
            i2 = i != 2 ? i != 3 ? 0 : 5 : 4;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzg() {
        int zzb2 = zzggj.zzb(this.zzh);
        int i = zzb2;
        if (zzb2 == 0) {
            i = 1;
        }
        return i;
    }
}
