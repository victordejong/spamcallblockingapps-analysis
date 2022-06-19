package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfzy.class */
public final class zzfzy extends zzgga<zzfzy, zzfzx> implements zzghj {
    private static final zzfzy zzh;
    private int zzb;
    private zzfzs zze;
    private zzgex zzf;
    private zzgex zzg;

    static {
        zzfzy zzfzyVar = new zzfzy();
        zzh = zzfzyVar;
        zzgga.zzay(zzfzy.class, zzfzyVar);
    }

    private zzfzy() {
        zzgex zzgexVar = zzgex.zzb;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
    }

    public static zzfzy zzf(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfzy) zzgga.zzaI(zzh, zzgexVar, zzgfmVar);
    }

    public static zzfzx zzg() {
        return zzh.zzas();
    }

    public static zzfzy zzh() {
        return zzh;
    }

    public static /* synthetic */ void zzk(zzfzy zzfzyVar, zzfzs zzfzsVar) {
        zzfzsVar.getClass();
        zzfzyVar.zze = zzfzsVar;
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzfzy();
            }
            if (i2 == 4) {
                return new zzfzx(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzfzs zzc() {
        zzfzs zzfzsVar = this.zze;
        zzfzs zzfzsVar2 = zzfzsVar;
        if (zzfzsVar == null) {
            zzfzsVar2 = zzfzs.zze();
        }
        return zzfzsVar2;
    }

    public final zzgex zzd() {
        return this.zzf;
    }

    public final zzgex zze() {
        return this.zzg;
    }
}
