package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgbq.class */
public final class zzgbq extends zzgga<zzgbq, zzgbp> implements zzghj {
    private static final zzgbq zzf;
    private int zzb;
    private zzgbt zze;

    static {
        zzgbq zzgbqVar = new zzgbq();
        zzf = zzgbqVar;
        zzgga.zzay(zzgbq.class, zzgbqVar);
    }

    private zzgbq() {
    }

    public static zzgbq zzd(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzgbq) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzgbp zze() {
        return zzf.zzas();
    }

    public static /* synthetic */ void zzh(zzgbq zzgbqVar, zzgbt zzgbtVar) {
        zzgbtVar.getClass();
        zzgbqVar.zze = zzgbtVar;
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
                return new zzgbq();
            }
            if (i2 == 4) {
                return new zzgbp(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgbt zzc() {
        zzgbt zzgbtVar = this.zze;
        zzgbt zzgbtVar2 = zzgbtVar;
        if (zzgbtVar == null) {
            zzgbtVar2 = zzgbt.zzf();
        }
        return zzgbtVar2;
    }
}
