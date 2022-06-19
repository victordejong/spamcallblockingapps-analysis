package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdw.class */
public final class zzbdw extends zzgkl<zzbdw, zzbdv> implements zzglw {
    private static final zzbdw zzb;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzbdw zzbdwVar = new zzbdw();
        zzb = zzbdwVar;
        zzgkl.zzaK(zzbdw.class, zzbdwVar);
    }

    private zzbdw() {
    }

    public static zzbdv zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzbdw zzbdwVar, int i) {
        zzbdwVar.zze |= 1;
        zzbdwVar.zzf = i;
    }

    public static /* synthetic */ void zze(zzbdw zzbdwVar, int i) {
        zzbdwVar.zze |= 2;
        zzbdwVar.zzg = i;
    }

    public static /* synthetic */ void zzf(zzbdw zzbdwVar, int i) {
        zzbdwVar.zze |= 4;
        zzbdwVar.zzh = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002င\u0001\u0003င\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzbdw();
            }
            if (i2 == 4) {
                return new zzbdv(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
