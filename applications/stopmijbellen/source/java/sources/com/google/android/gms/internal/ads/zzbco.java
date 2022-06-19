package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbco.class */
public final class zzbco extends zzgkl<zzbco, zzbcn> implements zzglw {
    private static final zzbco zzb;
    private int zze;
    private int zzg;
    private zzbdu zzi;
    private String zzf = "";
    private zzgkq zzh = zzgkl.zzaB();

    static {
        zzbco zzbcoVar = new zzbco();
        zzb = zzbcoVar;
        zzgkl.zzaK(zzbco.class, zzbcoVar);
    }

    private zzbco() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဈ��\u0002ဌ\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zze", "zzf", "zzg", zzbcj.zza, "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzbco();
            } else {
                if (i2 == 4) {
                    return new zzbcn(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
