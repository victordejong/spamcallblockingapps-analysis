package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyy.class */
public final class zzyy extends zzgga<zzyy, zzyx> implements zzghj {
    private static final zzyy zzl;
    private int zzb;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;

    static {
        zzyy zzyyVar = new zzyy();
        zzl = zzyyVar;
        zzgga.zzay(zzyy.class, zzyyVar);
    }

    private zzyy() {
    }

    public static zzyx zza() {
        return zzl.zzas();
    }

    public static /* synthetic */ void zzd(zzyy zzyyVar, long j) {
        zzyyVar.zzb |= 4;
        zzyyVar.zzg = j;
    }

    public static /* synthetic */ void zze(zzyy zzyyVar, long j) {
        zzyyVar.zzb |= 8;
        zzyyVar.zzh = j;
    }

    public static /* synthetic */ void zzf(zzyy zzyyVar, long j) {
        zzyyVar.zzb |= 16;
        zzyyVar.zzi = j;
    }

    public static /* synthetic */ void zzg(zzyy zzyyVar, long j) {
        zzyyVar.zzb |= 32;
        zzyyVar.zzj = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzl, "\u0001\u0007��\u0001\u0001\u0007\u0007������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            }
            if (i2 == 3) {
                return new zzyy();
            }
            if (i2 == 4) {
                return new zzyx(null);
            }
            if (i2 == 5) {
                return zzl;
            }
            return null;
        }
        return (byte) 1;
    }
}
