package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaji.class */
public final class zzaji extends zzgkl<zzaji, zzajh> implements zzglw {
    private static final zzaji zzb;
    private int zze;
    private int zzf;
    private long zzg = -1;

    static {
        zzaji zzajiVar = new zzaji();
        zzb = zzajiVar;
        zzgkl.zzaK(zzaji.class, zzajiVar);
    }

    private zzaji() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဂ\u0001", new Object[]{"zze", "zzf", zzaje.zza, "zzg"});
            } else if (i2 == 3) {
                return new zzaji();
            } else {
                if (i2 == 4) {
                    return new zzajh(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
