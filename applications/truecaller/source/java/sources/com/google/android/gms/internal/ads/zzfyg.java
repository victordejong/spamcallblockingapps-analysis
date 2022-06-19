package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfyg.class */
public final class zzfyg extends zzgga<zzfyg, zzfyf> implements zzghj {
    private static final zzfyg zzf;
    private zzfyj zzb;
    private int zze;

    static {
        zzfyg zzfygVar = new zzfyg();
        zzf = zzfygVar;
        zzgga.zzay(zzfyg.class, zzfygVar);
    }

    private zzfyg() {
    }

    public static zzfyg zzd(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfyg) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzfyf zze() {
        return zzf.zzas();
    }

    public static /* synthetic */ void zzg(zzfyg zzfygVar, zzfyj zzfyjVar) {
        zzfyjVar.getClass();
        zzfygVar.zzb = zzfyjVar;
    }

    public final zzfyj zza() {
        zzfyj zzfyjVar = this.zzb;
        zzfyj zzfyjVar2 = zzfyjVar;
        if (zzfyjVar == null) {
            zzfyjVar2 = zzfyj.zzd();
        }
        return zzfyjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzfyg();
            }
            if (i2 == 4) {
                return new zzfyf(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final int zzc() {
        return this.zze;
    }
}
