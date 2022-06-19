package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfyp.class */
public final class zzfyp extends zzgga<zzfyp, zzfyo> implements zzghj {
    private static final zzfyp zzf;
    private int zzb;
    private int zze;

    static {
        zzfyp zzfypVar = new zzfyp();
        zzf = zzfypVar;
        zzgga.zzay(zzfyp.class, zzfypVar);
    }

    private zzfyp() {
    }

    public static zzfyp zzc(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfyp) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzfyo zzd() {
        return zzf.zzas();
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0002\u0003\u0002������\u0002\u000b\u0003\u000b", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzfyp();
            }
            if (i2 == 4) {
                return new zzfyo(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }
}
