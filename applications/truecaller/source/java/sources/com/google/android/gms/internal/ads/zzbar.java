package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbar.class */
public final class zzbar extends zzgga<zzbar, zzbaq> implements zzghj {
    private static final zzbar zzi;
    private int zzb;
    private int zzf;
    private zzbbx zzh;
    private String zze = "";
    private zzggf zzg = zzgga.zzaB();

    static {
        zzbar zzbarVar = new zzbar();
        zzi = zzbarVar;
        zzgga.zzay(zzbar.class, zzbarVar);
    }

    private zzbar() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဈ��\u0002ဌ\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzb", "zze", "zzf", zzbam.zza, "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzbar();
            } else {
                if (i2 == 4) {
                    return new zzbaq(null);
                }
                if (i2 == 5) {
                    return zzi;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
