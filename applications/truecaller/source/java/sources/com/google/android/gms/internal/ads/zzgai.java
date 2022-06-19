package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgai.class */
public final class zzgai extends zzgga<zzgai, zzgah> implements zzghj {
    private static final zzgai zzg;
    private int zzb;
    private zzgao zze;
    private zzgex zzf = zzgex.zzb;

    static {
        zzgai zzgaiVar = new zzgai();
        zzg = zzgaiVar;
        zzgga.zzay(zzgai.class, zzgaiVar);
    }

    private zzgai() {
    }

    public static zzgai zze(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzgai) zzgga.zzaI(zzg, zzgexVar, zzgfmVar);
    }

    public static zzgah zzf() {
        return zzg.zzas();
    }

    public static zzgai zzg() {
        return zzg;
    }

    public static /* synthetic */ void zzj(zzgai zzgaiVar, zzgao zzgaoVar) {
        zzgaoVar.getClass();
        zzgaiVar.zze = zzgaoVar;
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
                return new zzgai();
            }
            if (i2 == 4) {
                return new zzgah(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgao zzc() {
        zzgao zzgaoVar = this.zze;
        zzgao zzgaoVar2 = zzgaoVar;
        if (zzgaoVar == null) {
            zzgaoVar2 = zzgao.zzd();
        }
        return zzgaoVar2;
    }

    public final zzgex zzd() {
        return this.zzf;
    }
}
