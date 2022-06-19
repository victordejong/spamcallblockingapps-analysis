package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgcb.class */
public final class zzgcb extends zzgga<zzgcb, zzgca> implements zzghj {
    private static final zzgcb zzf;
    private int zzb;
    private zzgex zze = zzgex.zzb;

    static {
        zzgcb zzgcbVar = new zzgcb();
        zzf = zzgcbVar;
        zzgga.zzay(zzgcb.class, zzgcbVar);
    }

    private zzgcb() {
    }

    public static zzgcb zzd(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzgcb) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzgca zze() {
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
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzgcb();
            }
            if (i2 == 4) {
                return new zzgca(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgex zzc() {
        return this.zze;
    }
}
