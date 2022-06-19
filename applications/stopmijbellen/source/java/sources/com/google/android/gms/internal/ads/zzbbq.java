package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbq.class */
public final class zzbbq extends zzgkl<zzbbq, zzbbp> implements zzglw {
    private static final zzbbq zzb;
    private int zze;
    private boolean zzf;
    private boolean zzg;
    private int zzh;

    static {
        zzbbq zzbbqVar = new zzbbq();
        zzb = zzbbqVar;
        zzgkl.zzaK(zzbbq.class, zzbbqVar);
    }

    private zzbbq() {
    }

    public static zzbbp zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzbbq zzbbqVar, boolean z) {
        zzbbqVar.zze |= 1;
        zzbbqVar.zzf = z;
    }

    public static /* synthetic */ void zze(zzbbq zzbbqVar, boolean z) {
        zzbbqVar.zze |= 2;
        zzbbqVar.zzg = z;
    }

    public static /* synthetic */ void zzf(zzbbq zzbbqVar, int i) {
        zzbbqVar.zze |= 4;
        zzbbqVar.zzh = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဇ��\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzbbq();
            }
            if (i2 == 4) {
                return new zzbbp(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
