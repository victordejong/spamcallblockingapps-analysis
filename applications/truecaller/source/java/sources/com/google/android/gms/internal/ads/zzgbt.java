package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgbt.class */
public final class zzgbt extends zzgga<zzgbt, zzgbs> implements zzghj {
    private static final zzgbt zzf;
    private String zzb = "";
    private zzgau zze;

    static {
        zzgbt zzgbtVar = new zzgbt();
        zzf = zzgbtVar;
        zzgga.zzay(zzgbt.class, zzgbtVar);
    }

    private zzgbt() {
    }

    public static zzgbt zze(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzgbt) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzgbt zzf() {
        return zzf;
    }

    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzgbt();
            }
            if (i2 == 4) {
                return new zzgbs(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final boolean zzc() {
        return this.zze != null;
    }

    public final zzgau zzd() {
        zzgau zzgauVar = this.zze;
        zzgau zzgauVar2 = zzgauVar;
        if (zzgauVar == null) {
            zzgauVar2 = zzgau.zze();
        }
        return zzgauVar2;
    }
}
