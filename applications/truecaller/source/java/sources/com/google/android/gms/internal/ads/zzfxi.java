package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfxi.class */
public final class zzfxi extends zzgga<zzfxi, zzfxh> implements zzghj {
    private static final zzfxi zzf;
    private int zzb;
    private zzfxl zze;

    static {
        zzfxi zzfxiVar = new zzfxi();
        zzf = zzfxiVar;
        zzgga.zzay(zzfxi.class, zzfxiVar);
    }

    private zzfxi() {
    }

    public static zzfxi zzd(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfxi) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzfxh zze() {
        return zzf.zzas();
    }

    public static /* synthetic */ void zzh(zzfxi zzfxiVar, zzfxl zzfxlVar) {
        zzfxlVar.getClass();
        zzfxiVar.zze = zzfxlVar;
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzfxi();
            }
            if (i2 == 4) {
                return new zzfxh(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzfxl zzc() {
        zzfxl zzfxlVar = this.zze;
        zzfxl zzfxlVar2 = zzfxlVar;
        if (zzfxlVar == null) {
            zzfxlVar2 = zzfxl.zzd();
        }
        return zzfxlVar2;
    }
}
