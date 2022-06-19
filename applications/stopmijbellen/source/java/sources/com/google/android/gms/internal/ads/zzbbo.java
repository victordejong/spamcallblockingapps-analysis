package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbo.class */
public final class zzbbo extends zzgkl<zzbbo, zzbbn> implements zzglw {
    private static final zzbbo zzb;
    private int zze;
    private boolean zzf;
    private int zzg;

    static {
        zzbbo zzbboVar = new zzbbo();
        zzb = zzbboVar;
        zzgkl.zzaK(zzbbo.class, zzbboVar);
    }

    private zzbbo() {
    }

    public static zzbbn zza() {
        return zzb.zzat();
    }

    public static zzbbo zzd() {
        return zzb;
    }

    public static /* synthetic */ void zze(zzbbo zzbboVar, boolean z) {
        zzbboVar.zze |= 1;
        zzbboVar.zzf = z;
    }

    public static /* synthetic */ void zzf(zzbbo zzbboVar, int i) {
        zzbboVar.zze |= 2;
        zzbboVar.zzg = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002ဋ\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzbbo();
            }
            if (i2 == 4) {
                return new zzbbn(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
