package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgbk.class */
public final class zzgbk extends zzgga<zzgbk, zzgbj> implements zzghj {
    private static final zzgbk zzf;
    private int zzb;
    private zzgbn zze;

    static {
        zzgbk zzgbkVar = new zzgbk();
        zzf = zzgbkVar;
        zzgga.zzay(zzgbk.class, zzgbkVar);
    }

    private zzgbk() {
    }

    public static zzgbk zzd(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzgbk) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzgbj zze() {
        return zzf.zzas();
    }

    public static /* synthetic */ void zzh(zzgbk zzgbkVar, zzgbn zzgbnVar) {
        zzgbnVar.getClass();
        zzgbkVar.zze = zzgbnVar;
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
                return new zzgbk();
            }
            if (i2 == 4) {
                return new zzgbj(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgbn zzc() {
        zzgbn zzgbnVar = this.zze;
        zzgbn zzgbnVar2 = zzgbnVar;
        if (zzgbnVar == null) {
            zzgbnVar2 = zzgbn.zzd();
        }
        return zzgbnVar2;
    }
}
