package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfxu.class */
public final class zzfxu extends zzgga<zzfxu, zzfxt> implements zzghj {
    private static final zzfxu zzg;
    private int zzb;
    private zzfya zze;
    private zzgex zzf = zzgex.zzb;

    static {
        zzfxu zzfxuVar = new zzfxu();
        zzg = zzfxuVar;
        zzgga.zzay(zzfxu.class, zzfxuVar);
    }

    private zzfxu() {
    }

    public static zzfxu zze(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfxu) zzgga.zzaI(zzg, zzgexVar, zzgfmVar);
    }

    public static zzfxt zzf() {
        return zzg.zzas();
    }

    public static zzfxu zzg() {
        return zzg;
    }

    public static /* synthetic */ void zzj(zzfxu zzfxuVar, zzfya zzfyaVar) {
        zzfyaVar.getClass();
        zzfxuVar.zze = zzfyaVar;
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzfxu();
            }
            if (i2 == 4) {
                return new zzfxt(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzfya zzc() {
        zzfya zzfyaVar = this.zze;
        zzfya zzfyaVar2 = zzfyaVar;
        if (zzfyaVar == null) {
            zzfyaVar2 = zzfya.zzd();
        }
        return zzfyaVar2;
    }

    public final zzgex zzd() {
        return this.zzf;
    }
}
