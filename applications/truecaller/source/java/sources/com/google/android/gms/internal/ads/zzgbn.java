package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgbn.class */
public final class zzgbn extends zzgga<zzgbn, zzgbm> implements zzghj {
    private static final zzgbn zze;
    private String zzb = "";

    static {
        zzgbn zzgbnVar = new zzgbn();
        zze = zzgbnVar;
        zzgga.zzay(zzgbn.class, zzgbnVar);
    }

    private zzgbn() {
    }

    public static zzgbn zzc(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzgbn) zzgga.zzaI(zze, zzgexVar, zzgfmVar);
    }

    public static zzgbn zzd() {
        return zze;
    }

    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zze, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new zzgbn();
            }
            if (i2 == 4) {
                return new zzgbm(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
