package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgce.class */
public final class zzgce extends zzgga<zzgce, zzgcd> implements zzghj {
    private static final zzgce zze;
    private int zzb;

    static {
        zzgce zzgceVar = new zzgce();
        zze = zzgceVar;
        zzgga.zzay(zzgce.class, zzgceVar);
    }

    private zzgce() {
    }

    public static zzgce zza(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzgce) zzgga.zzaI(zze, zzgexVar, zzgfmVar);
    }

    public static zzgce zzc() {
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zze, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new zzgce();
            }
            if (i2 == 4) {
                return new zzgcd(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
