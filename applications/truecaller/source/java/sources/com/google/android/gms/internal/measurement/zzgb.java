package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgb.class */
public final class zzgb extends zzjx implements zzld {
    private static final zzgb zza;
    private int zze;
    private int zzf = 1;
    private zzke zzg = zzjx.zzby();

    static {
        zzgb zzgbVar = new zzgb();
        zza = zzgbVar;
        zzjx.zzbE(zzgb.class, zzgbVar);
    }

    private zzgb() {
    }

    public static zzfz zza() {
        return (zzfz) zza.zzbs();
    }

    public static /* synthetic */ zzgb zzb() {
        return zza;
    }

    public static /* synthetic */ void zzc(zzgb zzgbVar, zzfq zzfqVar) {
        zzfqVar.getClass();
        zzke zzkeVar = zzgbVar.zzg;
        if (!zzkeVar.zzc()) {
            zzgbVar.zzg = zzjx.zzbz(zzkeVar);
        }
        zzgbVar.zzg.add(zzfqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zze", "zzf", zzga.zza, "zzg", zzfq.class});
            } else if (i2 == 3) {
                return new zzgb();
            } else {
                if (i2 == 4) {
                    return new zzfz(null);
                }
                if (i2 == 5) {
                    return zza;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
