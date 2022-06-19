package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbz.class */
public final class zzbbz extends zzgga<zzbbz, zzbby> implements zzghj {
    private static final zzbbz zzh;
    private int zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzbbz zzbbzVar = new zzbbz();
        zzh = zzbbzVar;
        zzgga.zzay(zzbbz.class, zzbbzVar);
    }

    private zzbbz() {
    }

    public static zzbby zza() {
        return zzh.zzas();
    }

    public static /* synthetic */ void zzd(zzbbz zzbbzVar, int i) {
        zzbbzVar.zzb |= 1;
        zzbbzVar.zze = i;
    }

    public static /* synthetic */ void zze(zzbbz zzbbzVar, int i) {
        zzbbzVar.zzb |= 2;
        zzbbzVar.zzf = i;
    }

    public static /* synthetic */ void zzf(zzbbz zzbbzVar, int i) {
        zzbbzVar.zzb |= 4;
        zzbbzVar.zzg = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002င\u0001\u0003င\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzbbz();
            }
            if (i2 == 4) {
                return new zzbby(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
