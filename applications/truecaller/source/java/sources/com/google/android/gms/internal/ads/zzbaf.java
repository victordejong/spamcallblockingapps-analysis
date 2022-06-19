package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbaf.class */
public final class zzbaf extends zzgga<zzbaf, zzbae> implements zzghj {
    private static final zzbaf zzk;
    private int zzb;
    private int zze;
    private zzbbx zzf;
    private zzbbx zzg;
    private zzbbx zzh;
    private zzggj<zzbbx> zzi = zzgga.zzaE();
    private int zzj;

    static {
        zzbaf zzbafVar = new zzbaf();
        zzk = zzbafVar;
        zzgga.zzay(zzbaf.class, zzbafVar);
    }

    private zzbaf() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", zzbbx.class, "zzj"});
            }
            if (i2 == 3) {
                return new zzbaf();
            }
            if (i2 == 4) {
                return new zzbae(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }
}
