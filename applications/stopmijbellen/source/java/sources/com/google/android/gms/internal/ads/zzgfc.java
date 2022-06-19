package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgfc.class */
public final class zzgfc extends zzgkl<zzgfc, zzgfb> implements zzglw {
    private static final zzgfc zzb;
    private int zze;
    private int zzf;

    static {
        zzgfc zzgfcVar = new zzgfc();
        zzb = zzgfcVar;
        zzgkl.zzaK(zzgfc.class, zzgfcVar);
    }

    private zzgfc() {
    }

    public static zzgfb zzc() {
        return zzb.zzat();
    }

    public static zzgfc zze() {
        return zzb;
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgfc();
            }
            if (i2 == 4) {
                return new zzgfb(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final int zzg() {
        int zzb2 = zzget.zzb(this.zze);
        int i = zzb2;
        if (zzb2 == 0) {
            i = 1;
        }
        return i;
    }
}
