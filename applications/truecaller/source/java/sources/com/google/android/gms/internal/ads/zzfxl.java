package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfxl.class */
public final class zzfxl extends zzgga<zzfxl, zzfxk> implements zzghj {
    private static final zzfxl zze;
    private int zzb;

    static {
        zzfxl zzfxlVar = new zzfxl();
        zze = zzfxlVar;
        zzgga.zzay(zzfxl.class, zzfxlVar);
    }

    private zzfxl() {
    }

    public static zzfxk zzc() {
        return zze.zzas();
    }

    public static zzfxl zzd() {
        return zze;
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zze, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new zzfxl();
            }
            if (i2 == 4) {
                return new zzfxk(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
