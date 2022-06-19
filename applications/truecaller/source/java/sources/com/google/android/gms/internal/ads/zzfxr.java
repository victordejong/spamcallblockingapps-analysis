package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfxr.class */
public final class zzfxr extends zzgga<zzfxr, zzfxq> implements zzghj {
    private static final zzfxr zzf;
    private zzfxx zzb;
    private zzgal zze;

    static {
        zzfxr zzfxrVar = new zzfxr();
        zzf = zzfxrVar;
        zzgga.zzay(zzfxr.class, zzfxrVar);
    }

    private zzfxr() {
    }

    public static zzfxr zzd(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfxr) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzfxq zze() {
        return zzf.zzas();
    }

    public static /* synthetic */ void zzg(zzfxr zzfxrVar, zzfxx zzfxxVar) {
        zzfxxVar.getClass();
        zzfxrVar.zzb = zzfxxVar;
    }

    public static /* synthetic */ void zzh(zzfxr zzfxrVar, zzgal zzgalVar) {
        zzgalVar.getClass();
        zzfxrVar.zze = zzgalVar;
    }

    public final zzfxx zza() {
        zzfxx zzfxxVar = this.zzb;
        zzfxx zzfxxVar2 = zzfxxVar;
        if (zzfxxVar == null) {
            zzfxxVar2 = zzfxx.zzf();
        }
        return zzfxxVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzfxr();
            }
            if (i2 == 4) {
                return new zzfxq(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgal zzc() {
        zzgal zzgalVar = this.zze;
        zzgal zzgalVar2 = zzgalVar;
        if (zzgalVar == null) {
            zzgalVar2 = zzgal.zzf();
        }
        return zzgalVar2;
    }
}
