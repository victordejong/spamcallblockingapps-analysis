package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfyj.class */
public final class zzfyj extends zzgga<zzfyj, zzfyi> implements zzghj {
    private static final zzfyj zze;
    private int zzb;

    static {
        zzfyj zzfyjVar = new zzfyj();
        zze = zzfyjVar;
        zzgga.zzay(zzfyj.class, zzfyjVar);
    }

    private zzfyj() {
    }

    public static zzfyi zzc() {
        return zze.zzas();
    }

    public static zzfyj zzd() {
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
                return new zzfyj();
            }
            if (i2 == 4) {
                return new zzfyi(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
