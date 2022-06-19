package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfya.class */
public final class zzfya extends zzgga<zzfya, zzfxz> implements zzghj {
    private static final zzfya zze;
    private int zzb;

    static {
        zzfya zzfyaVar = new zzfya();
        zze = zzfyaVar;
        zzgga.zzay(zzfya.class, zzfyaVar);
    }

    private zzfya() {
    }

    public static zzfxz zzc() {
        return zze.zzas();
    }

    public static zzfya zzd() {
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
                return new zzfya();
            }
            if (i2 == 4) {
                return new zzfxz(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
