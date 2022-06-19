package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfzp.class */
public final class zzfzp extends zzgga<zzfzp, zzfzo> implements zzghj {
    private static final zzfzp zze;
    private zzfzs zzb;

    static {
        zzfzp zzfzpVar = new zzfzp();
        zze = zzfzpVar;
        zzgga.zzay(zzfzp.class, zzfzpVar);
    }

    private zzfzp() {
    }

    public static zzfzp zzc(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfzp) zzgga.zzaI(zze, zzgexVar, zzgfmVar);
    }

    public static zzfzo zzd() {
        return zze.zzas();
    }

    public static /* synthetic */ void zzf(zzfzp zzfzpVar, zzfzs zzfzsVar) {
        zzfzsVar.getClass();
        zzfzpVar.zzb = zzfzsVar;
    }

    public final zzfzs zza() {
        zzfzs zzfzsVar = this.zzb;
        zzfzs zzfzsVar2 = zzfzsVar;
        if (zzfzsVar == null) {
            zzfzsVar2 = zzfzs.zze();
        }
        return zzfzsVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zze, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new zzfzp();
            }
            if (i2 == 4) {
                return new zzfzo(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
