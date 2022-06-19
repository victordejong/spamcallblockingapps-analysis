package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyh.class */
public final class zzyh extends zzgga<zzyh, zzyg> implements zzghj {
    private static final zzyh zzk;
    private int zzb;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        zzyh zzyhVar = new zzyh();
        zzk = zzyhVar;
        zzgga.zzay(zzyh.class, zzyhVar);
    }

    private zzyh() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new zzyh();
            }
            if (i2 == 4) {
                return new zzyg(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }
}
