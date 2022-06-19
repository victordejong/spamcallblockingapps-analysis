package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbel.class */
public final class zzbel extends zzgkl<zzbel, zzbek> implements zzglw {
    private static final zzbel zzb;
    private int zze;
    private int zzf = 1000;
    private zzbed zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private long zzk;

    static {
        zzbel zzbelVar = new zzbel();
        zzb = zzbelVar;
        zzgkl.zzaK(zzbel.class, zzbelVar);
    }

    private zzbel() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zze", "zzf", zzbcj.zza, "zzg", "zzh", "zzi", "zzj", "zzk"});
            } else if (i2 == 3) {
                return new zzbel();
            } else {
                if (i2 == 4) {
                    return new zzbek(null);
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
