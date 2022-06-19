package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadf.class */
public final class zzadf extends zzgga<zzadf, zzade> implements zzghj {
    private static final zzadf zzh;
    private int zzb;
    private zzadi zze;
    private zzgex zzf;
    private zzgex zzg;

    static {
        zzadf zzadfVar = new zzadf();
        zzh = zzadfVar;
        zzgga.zzay(zzadf.class, zzadfVar);
    }

    private zzadf() {
        zzgex zzgexVar = zzgex.zzb;
        this.zzf = zzgexVar;
        this.zzg = zzgexVar;
    }

    public static zzadf zze(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzadf) zzgga.zzaI(zzh, zzgexVar, zzgfmVar);
    }

    public final zzadi zza() {
        zzadi zzadiVar = this.zze;
        zzadi zzadiVar2 = zzadiVar;
        if (zzadiVar == null) {
            zzadiVar2 = zzadi.zzj();
        }
        return zzadiVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzadf();
            }
            if (i2 == 4) {
                return new zzade(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgex zzc() {
        return this.zzf;
    }

    public final zzgex zzd() {
        return this.zzg;
    }
}
