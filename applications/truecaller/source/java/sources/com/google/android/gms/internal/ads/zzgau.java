package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgau.class */
public final class zzgau extends zzgga<zzgau, zzgat> implements zzghj {
    private static final zzgau zzg;
    private String zzb = "";
    private zzgex zze = zzgex.zzb;
    private int zzf;

    static {
        zzgau zzgauVar = new zzgau();
        zzg = zzgauVar;
        zzgga.zzay(zzgau.class, zzgauVar);
    }

    private zzgau() {
    }

    public static zzgat zzd() {
        return zzg.zzas();
    }

    public static zzgau zze() {
        return zzg;
    }

    public static /* synthetic */ zzgau zzf() {
        return zzg;
    }

    public static /* synthetic */ void zzg(zzgau zzgauVar, String str) {
        str.getClass();
        zzgauVar.zzb = str;
    }

    public static /* synthetic */ void zzh(zzgau zzgauVar, zzgex zzgexVar) {
        zzgauVar.zze = zzgexVar;
    }

    public static /* synthetic */ void zzj(zzgau zzgauVar, int i) {
        zzgauVar.zzf = zzgbv.zza(i);
    }

    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgau();
            }
            if (i2 == 4) {
                return new zzgat(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgex zzc() {
        return this.zze;
    }

    public final int zzi() {
        int zzb = zzgbv.zzb(this.zzf);
        int i = zzb;
        if (zzb == 0) {
            i = 1;
        }
        return i;
    }
}
