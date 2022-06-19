package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcu.class */
public final class zzbcu extends zzgga<zzbcu, zzbct> implements zzghj {
    private static final zzbcu zzg;
    private int zzb;
    private boolean zze;
    private int zzf;

    static {
        zzbcu zzbcuVar = new zzbcu();
        zzg = zzbcuVar;
        zzgga.zzay(zzbcu.class, zzbcuVar);
    }

    private zzbcu() {
    }

    public static zzbct zzc() {
        return zzg.zzas();
    }

    public static /* synthetic */ void zze(zzbcu zzbcuVar, boolean z) {
        zzbcuVar.zzb |= 1;
        zzbcuVar.zze = z;
    }

    public static /* synthetic */ void zzf(zzbcu zzbcuVar, int i) {
        zzbcuVar.zzb |= 2;
        zzbcuVar.zzf = i;
    }

    public final boolean zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002င\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzbcu();
            }
            if (i2 == 4) {
                return new zzbct(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
