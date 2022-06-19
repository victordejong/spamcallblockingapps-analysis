package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfxf.class */
public final class zzfxf extends zzgga<zzfxf, zzfxe> implements zzghj {
    private static final zzfxf zzg;
    private int zzb;
    private zzgex zze = zzgex.zzb;
    private zzfxl zzf;

    static {
        zzfxf zzfxfVar = new zzfxf();
        zzg = zzfxfVar;
        zzgga.zzay(zzfxf.class, zzfxfVar);
    }

    private zzfxf() {
    }

    public static zzfxf zze(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfxf) zzgga.zzaI(zzg, zzgexVar, zzgfmVar);
    }

    public static zzfxe zzf() {
        return zzg.zzas();
    }

    public static /* synthetic */ void zzj(zzfxf zzfxfVar, zzfxl zzfxlVar) {
        zzfxlVar.getClass();
        zzfxfVar.zzf = zzfxlVar;
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzfxf();
            }
            if (i2 == 4) {
                return new zzfxe(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgex zzc() {
        return this.zze;
    }

    public final zzfxl zzd() {
        zzfxl zzfxlVar = this.zzf;
        zzfxl zzfxlVar2 = zzfxlVar;
        if (zzfxlVar == null) {
            zzfxlVar2 = zzfxl.zzd();
        }
        return zzfxlVar2;
    }
}
